<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Crypt;
use Symfony\Component\HttpFoundation\Response;



class AuthController extends Controller
{
    //
    public function Token_Register(Request $request)
    {
   // Validate incoming request
   $validatedData = $request->validate([
    'name' => 'required|string|max:255',
    'email' => 'required|string|email|max:255|unique:users',
    'password' => 'required|string|min:8', // Requires 'password_confirmation'
]);

try {
    // Create the user
    $user = User::create([
        'name' => $validatedData['name'],
        'email' => $validatedData['email'],
        'password' => Hash::make($validatedData['password']),
    ]);

    // Return a success response
    return response()->json([
        'status' => true,
        'message' => 'User registered successfully',
        'user' => $user,
    ], 201);
} catch (\Exception $e) {
    // Handle errors
    return response()->json([
        'status' => false,
        'message' => 'Registration failed',
        'error' => $e->getMessage(),
    ], 500);
}
    }

    public function showall()
    {
        $employees = Employee::all();
    return response()->json(['Employees' => $employees], 200);
    }

    public function Token_Logout(Request $request)
    {
        // Kunin ang authenticated na user
    $user = Auth::user();

    if ($user) {
        // I-revoke lahat ng token ng user
        $user->tokens()->delete();
    }

    // Burahin ang JWT cookie
    $cookie = cookie()->forget('jwt');

    return response([
        'status' => true,
        'message' => 'Logout successful'
    ])->withCookie($cookie);
    }



    public function NewLogin(Request $request)
    {
        if (!Auth::attempt($request->only('email','password'))) {
            return response([
                'status' => false,
                'message' => 'Invalid Credentials!'
            ], Response::HTTP_UNAUTHORIZED);
        }

        $user = Auth::user();

        $token = $user->createToken('my-secret-token')->plainTextToken;

        // I-define ang cookie na may SameSite=None at Secure
        $cookie = cookie('auth_token', $token, 60 * 24, null, null, true, true, false, 'None');

        return response([
            'status' => true,
            'message' => 'Login successful',
           // 'token' => $token
        ])->withCookie($cookie);
    }


    public function user(Request $request)
    {
        return Auth::user();
    }


    public function Token_Login(Request $request)
    {
        // Validation ng email at password
        $data = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        // Hanapin ang user base sa email
        $user = User::where('email', $data['email'])->first();

        // Kung wala ang user o mali ang password
        if (!$user || !Hash::check($data['password'], $user->password)) {
            return response([
                'status' => false,
                'message' => 'Bad Credentials'
            ], 200);
        }

        // Mag-create ng token
        $token = $user->createToken('sanctum-token')->plainTextToken;


        // I-set ang token at ID sa cookies bago ang JSON response
        $response = response()->json([
            'message' => 'Login successful!',
            'status' => true,
            'user' => $user,
        ]);

        // I-set ang encrypted token at user ID sa cookies
        return $response
            ->cookie('sanctum_token', $token, 60 * 24 * 7, '/', null, false, false, false, 'None'); // 1 linggo

    }


    public function GetUserDetailsFromCookies(Request $request)
    {
        // Kunin ang encrypted 'user_id' mula sa cookies
        $encryptedUserId = $request->cookie('user_id');

        // Kunin ang encrypted 'sanctum_token' mula sa cookies
        $encryptedToken = $request->cookie('sanctum_token');

        // I-check kung mayroon ang cookies
        if (!$encryptedUserId || !$encryptedToken) {
            return response()->json([
                'status' => false,
                'message' => 'User ID or token not found in cookies'
            ], 404);
        }

        // I-decrypt ang user ID at token
        try {
            $userId = Crypt::decrypt($encryptedUserId);
            $token = Crypt::decrypt($encryptedToken);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid encrypted data'
            ], 400);
        }

        return response()->json([
            'status' => true,
            'message' => 'User details retrieved successfully',
            'user_id' => $userId,
            'token' => $token
        ]);
    }








}
