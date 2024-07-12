<?php
namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class GoogleController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {

            $user = Socialite::driver('google')->stateless()->user();

            $finduser = User::where('google_id', $user->id)->first();
    
            if ($finduser) {
                Auth::login($finduser);
    
                return redirect()->intended('login');
    
            } else {
                $newUser = User::createOrUpdate(['email' => $user->email],[
                    'name' => $user->name,
                    'google_id' => $user->id,
                    'password' => Hash::make('password') 
                ]);
    
                Auth::login($newUser);
    
                return redirect()->intended('login');
            }
        } catch (Exception $e) {
            dd($e->getMessage());
        }       
    }
}
