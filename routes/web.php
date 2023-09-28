<?php

use App\Http\Controllers\CustomAuthController;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\BlogPostController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get( '/index', [EtudiantController::class, 'index'])->name('etudiant.index');


// Route::get( '/blog', [EtudiantController::class, 'index'])->name('blog.index');
Route::get( '/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get( '/etudiant-create', [EtudiantController::class,'create'])->name('etudiant.create');
Route::post( '/etudiant-create', [EtudiantController::class,'store']);
Route::get( '/etudiant-edit/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put( '/etudiant-edit/{etudiant}', [EtudiantController::class, 'update']);
Route::delete( '/etudiant-edit/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');;



Route::get( '/registration', [CustomAuthController::class,'create'])->name('user.create');
Route::post( '/registration', [CustomAuthController::class,'store']);
Route::get( '/login', [CustomAuthController::class,'index'])->name('login');
Route::post( '/login', [CustomAuthController::class,'authentification'])->name('login');
Route::get( '/logout', [CustomAuthController::class,'logout'])->name('logout');
Route::get( '/user-list', [CustomAuthController::class,'userList'])->name('user.list');


Route::get( '/blog', [BlogPostController::class, 'index'])->name('blog.index')->middleware('auth');
Route::get( '/blog/{blogPost}', [BlogPostController::class, 'show'])->name('blog.show');
// Route::get('/query', [BlogPostController::class, 'query' ]);
