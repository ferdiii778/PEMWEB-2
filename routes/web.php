<?php

use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\AlternatifValueController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\CalculationController;
use App\Http\Controllers\CriteriaController;
use App\Http\Controllers\SubCriteriaController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
})->name('home');

// Uncomment these routes if you need registration functionality
// Route::get('/register', [AuthController::class, 'register_index'])->name('register');
// Route::post('/register', [AuthController::class, 'register_store'])->name('register.store');

Route::get('/login', [AuthController::class, 'login_index'])->name('login');
Route::post('/login', [AuthController::class, 'login_store'])->name('login.store');

// Combine the Google auth callback into one route
Route::get('/auth/callback', function () {
    $user = Socialite::driver('google')->stateless()->user();
    // Lakukan sesuatu dengan data pengguna, seperti menyimpannya di database
    dd($user);
});

// Login Google
Route::controller(GoogleController::class)->group(function () {
    Route::get('login/google', 'redirectToGoogle')->name('auth.google');
    Route::get('login/google/callback', 'handleGoogleCallback');
});

Route::middleware(['auth'])->group(function () {
    Route::resource('alternatifs', AlternatifController::class);
    Route::resource('criterias', CriteriaController::class);
    Route::resource('sub_criterias', SubCriteriaController::class);

    Route::get('/alternatif/values', [AlternatifValueController::class, 'index'])->name('alternatif.values.index');
    Route::get('/alternatif/values/{alternatif_criteria}', [AlternatifValueController::class, 'edit'])->name('alternatif.values.edit');
    Route::put('/alternatif/values/{alternatif_criteria}', [AlternatifValueController::class, 'update'])->name('alternatif.values.update');

    Route::get('/calculations', [CalculationController::class, 'index'])->name('calculations.index');

    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
});
