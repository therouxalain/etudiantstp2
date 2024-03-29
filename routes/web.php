<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\LocalizationController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\FileController;

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
    return view('une');
});

Route::get('/accueil', function () {
    return view('une');
});

//Connexion
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('login', [CustomAuthController::class, 'authentication'])->name('login.authentication');
Route::get('register', [CustomAuthController::class, 'create'])->name('user.register');
Route::post('register', [CustomAuthController::class, 'store'])->name('user.store');
Route::get('logout', [CustomAuthController::class, 'logout'])->name('user.logout')->middleware('auth');
// Route::get('/blog', [BlogPostController::class, 'index'])->name('blog.index')->middleware('auth');
Route::get('une', [CustomAuthController::class, 'une'])->name('une');
//

//Traitement des éléments du bottin 
Route::get('student', [StudentController::class, 'index'])->name('student.index');
Route::get('student/create', [StudentController::class, 'create'])->name('student.create');
Route::post('student/create', [StudentController::class, 'store'])->name('student.store');
Route::get('student/show/{student}', [StudentController::class, 'show'])->name('student.show');
//Route::get('/blog-pdf/{blogPost}', [BlogPostController::class, 'showPDF'])->name('blog.showPDF');
Route::get('student/edit/{student}', [StudentController::class, 'edit'])->name('student.edit');
Route::delete('student/edit/{student}', [StudentController::class, 'destroy'])->name('student.destroy');
Route::put('student/edit/{student}', [StudentController::class, 'update'])->name('student.update');

//Les villes
Route::get('city', [CityController::class, 'index'])->name('city.index');

//Gestion des articles
Route::get('articles', [ArticleController::class, 'index'])->name('forum');
Route::post('articles', [ArticleController::class, 'store'])->name('article.create');
Route::get('article/{article}', [ArticleController::class, 'show'])->name('article.show');
Route::get('article/edit/{article}', [ArticleController::class, 'edit'])->name('article.edit');
Route::put('article/edit/{article}', [ArticleController::class, 'update'])->name('article.update');
Route::delete('article/delete/{article}', [ArticleController::class, 'delete'])->name('article.delete');


Route::get('docs', [FileController::class, 'index'])->name('file.index');
//Avec un s a files ci-haut ça ne marche pas non plus -- je ne trouve pas mon erreur...
Route::post('document', [FileController::class, 'store'])->name('file.store');
Route::get('files/edit/{id}', [FileController::class, 'edit'])->name('file.edit');
Route::put('file/edit/{id}', [FileController::class, 'update'])->name('file.update');
Route::delete('files/{id}', [FileController::class, 'delete'])->name('file.delete');

//Multilinguisme
Route::get('lang/{locale}', [LocalizationController::class, 'index'])->name('lang');