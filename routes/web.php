<?php

use App\Http\Controllers\CategoryController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\NewsController;
use App\Http\Livewire\Category\ListCategory;
use App\Http\Livewire\News\CreateNews;
use App\Http\Livewire\News\ListNews;
use App\Http\Livewire\Pages\HomePage;

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


// Route::get('/dashboard', function () {
//     return view('admin.dashboard');
// })->middleware(['auth'])->name('dashboard');

// Route::get('/admin', [DashboardController::class, 'index'])->middleware('auth', 'auth.admin')->name('admin.dashboard');

Route::middleware('auth', 'auth.admin')->group(function () {
    Route::get('/admin', [DashboardController::class, 'index'])->name('admin.dashboard');
    Route::resource('/admin/category', CategoryController::class);
    Route::get('/admin/danhmuc', ListCategory::class);
    Route::get("/admin/tin-tuc/create", [NewsController::class, 'index']);
    Route::post("/admin/tin-tuc/store", [NewsController::class, 'store'])->name('tintuc.store');
    Route::get("/admin/tin-tuc", ListNews::class);
});

Route::get('/', HomePage::class);

require __DIR__ . '/auth.php';
