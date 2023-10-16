<?php

use App\Http\Controllers\CustomAuthController;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\BlogPostController;
use App\Http\Controllers\DocumentController;
use App\Http\Controllers\LocalizationController;

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
})->name('root');
;


Route::get('/index', [EtudiantController::class, 'index'])->name('etudiant.index')->middleware('auth');


// Route::get( '/blog', [EtudiantController::class, 'index'])->name('blog.index');
Route::get('/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get('/etudiant-create', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/etudiant-create', [EtudiantController::class, 'store']);
Route::get('/etudiant-edit/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit')->middleware('auth');
Route::put('/etudiant-edit/{etudiant}', [EtudiantController::class, 'update'])->middleware('auth');
Route::delete('/etudiant-edit/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete')->middleware('auth');
;



Route::get('/registration', [CustomAuthController::class, 'create'])->name('user.create');
Route::post('/registration', [CustomAuthController::class, 'store']);
Route::get('/login', [CustomAuthController::class, 'index'])->name('login');
Route::post('/login', [CustomAuthController::class, 'authentification'])->name('login');
Route::get('/logout', [CustomAuthController::class, 'logout'])->name('logout');
Route::get('/user-list', [CustomAuthController::class, 'userList'])->name('user.list')->middleware('auth');


Route::get('/blog', [BlogPostController::class, 'index'])->name('blog.index')->middleware('auth');
Route::get('/blog/{blogPost}', [BlogPostController::class, 'show'])->name('blog.show')->middleware('auth');

Route::get('/blog-create', [BlogPostController::class, 'create'])->name('blog.create')->middleware('auth')->middleware('auth');
Route::post('/blog-create', [BlogPostController::class, 'store'])->middleware('auth');
Route::get('/blog-edit/{blogPost}', [BlogPostController::class, 'edit'])->name('blog.edit')->middleware('auth');
Route::put('/blog-edit/{blogPost}', [BlogPostController::class, 'update'])->middleware('auth');
Route::delete('/blog-edit/{blogPost}', [BlogPostController::class, 'destroy'])->name('blog.delete')->middleware('auth');
;
// Route::get('/query', [BlogPostController::class, 'query' ]);

Route::get('/lang/{locale}', [LocalizationController::class, 'index'])->name('lang');

//Documents
Route::get('/document-create', [DocumentController::class, 'create'])->name('document.create')->middleware('auth');
Route::post('/document-create', [DocumentController::class, 'store']);
Route::get('/document', [DocumentController::class, 'index'])->name('document.index')->middleware('auth');
Route::get('/document/{document}', [DocumentController::class, 'show'])->name('document.show')->middleware('auth');


Route::get('/document-edit/{document}', [DocumentController::class, 'edit'])->name('document.edit')->middleware('auth');
Route::put('/document-edit/{document}', [DocumentController::class, 'update'])->middleware('auth');
Route::delete('/document-edit/{document}', [DocumentController::class, 'destroy'])->name('document.delete')->middleware('auth');
;

Route::get('documents/{document}/download', [DocumentController::class, 'download'])
    ->name('documents.download');
