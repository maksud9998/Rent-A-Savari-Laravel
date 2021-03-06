<?php

use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\LogoutComponent;
use App\Http\Livewire\DocumentsComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use App\Http\Livewire\RegisterComponent;
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


Route::get('/logout', function ()
{
    Session::flush();
    return redirect('/');
});
Route::get('/', HomeComponent::class);
Route::get('/register', RegisterComponent::class);
Route::get('/shop', ShopComponent::class);
Route::get('/cart', CartComponent::class)->name('car.cart');
Route::get('/checkout', CheckoutComponent::class);
Route::get('/car/{slug}', DetailsComponent::class)->name('car.details');
Route::get('/car-category/{category_slug}', CategoryComponent::class)->name('car.category');
Route::get('/search', SearchComponent::class)->name('car.search');
Route::get('/documents', DocumentsComponent::class);


// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');


//for user
Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/user/dashboard', UserDashboardComponent::class)->name('user.dashboard');
});


//for admin
Route::middleware(['auth:sanctum', 'verified', 'authadmin'])->group(function () {

    Route::get('/admin/dashboard', AdminDashboardComponent::class)->name('admin.dashboard');
});
