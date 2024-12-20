<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EnsureTokenIsValid
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Retrieve the 'jwt' cookie
        $jwtCookie = $request->cookie('auth_token');

        // Check if the cookie exists
        if (!$jwtCookie) {
            return response()->json([
                'status' => false,
                'message' => 'Unauthorized. Missing JWT token.'
            ], 401);
        }

        // Optional: Decode the cookie (if necessary)
        $decodedJwt = urldecode($jwtCookie);

        // Optional: Perform additional checks on the decoded JWT
        // Example: Validate structure, expiration, etc.
        if (!$this->isValidJwt($decodedJwt)) {
            return response()->json([
                'status' => false,
                'message' => 'Unauthorized. Invalid JWT token.'
            ], 401);
        }

        // Proceed to the next middleware if valid
        return $next($request);
    }

    /**
     * Optional method to validate JWT structure, signature, or expiration.
     *
     * @param string $jwt
     * @return bool
     */
    private function isValidJwt(string $jwt): bool
    {
        // Implement your JWT validation logic here.
        // For now, assume the JWT is valid if it's not empty.
        return !empty($jwt);
    }
}
