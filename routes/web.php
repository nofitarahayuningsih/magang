<?php

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

// halaman utama
Route::get('/', 'DashboardController@index')->name('dashboard');

// resources route
Route::resource('pages', 'PagesController');
Route::resource('inletters', 'InlettersController');
Route::resource('outletters', 'OutlettersController');
Route::resource('disposisis', 'DisposisisController');

// auth
Auth::routes();

//register
Route::get('/register', 'DashboardController@index');

// dashboard
Route::get('/dashboard', 'DashboardController@index');

// disposisi
Route::get('disposisis/{id_inletter}/create','DisposisisController@create')->name('add_disposisi');

// upload file inletter
Route::get('inletters/upload-file/{id_inletter}', 'InlettersController@upload')->name('uploadFileIn');
Route::post('inletters/post-file', 'InlettersController@up');

// upload file outletter
Route::get('outletters/upload-file/{id_outletter}', 'OutlettersController@upload')->name('uploadFileOut');
Route::post('outletters/post-file', 'OutlettersController@up');

// user routes
Route::get('users', 'UsersController@index')->name('userIndex');
Route::get('users/edit/{user_id}', 'UsersController@edit')->name('userEdit');
Route::put('users/update/{id}', 'UsersController@update')->name('userUpdate');
Route::get('users/create', 'UsersController@create')->name('userCreate');
Route::post('users/store', 'UsersController@store')->name('userStore');
Route::delete('users/edit/{user_id}', 'UsersController@destroy')->name('userDestroy');

// search
Route::get('/search', 'DashboardController@search')->name('search');

// delete file
Route::delete('file/delete/in/{letter_id}/{filename}', 'InlettersController@deleteFile')->name('deleteFileIn');
Route::delete('file/delete/out/{letter_id}/{filename}', 'OutlettersController@deleteFile')->name('deleteFileOut');