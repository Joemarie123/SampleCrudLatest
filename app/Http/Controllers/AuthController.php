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


class AuthController extends Controller
{
    //
    public function Token_Register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed'
        ]);

        // Hash ang password bago ito ipasa sa stored procedure
        $hashedPassword = bcrypt($data['password']);

        // Tawagin ang stored procedure
        DB::statement('CALL AddUser(?, ?, ?)', [
            $data['name'],
            $data['email'],
            $hashedPassword
        ]);

        // Kunin ang bagong user
        $user = User::where('email', $data['email'])->first();

        // Mag-create ng token at i-attach ito sa httpOnly cookie
        $token = $user->createToken('sanctum-token')->plainTextToken;


        return response()->json([
            'message' => 'Registration successful!',
            'user' => $user
        ])->cookie(
            'sanctum_token', $token, 60 * 24, '/', null, true, true, true, 'None'
        );
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





   public function Token_Logout(Request $request)
{
    // I-delete ang lahat ng tokens ng authenticated user
    auth()->user()->tokens()->delete();

    // Magbalik ng response na may message at alisin ang cookies
    return response()->json([
        "message" => 'Logout Successfully'
    ])->cookie('sanctum_token', '', -1) // Alisin ang sanctum_token
      ->cookie('user_id', '', -1); // Alisin ang user_id
}



}
