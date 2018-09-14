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

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', 'HomeController@index')->name('home');

Route::prefix('admin')->name('admin.')->middleware('auth')->group(function (){

    Route::get('users','UserController@index')->name('users');
    Route::post('users','UserController@store')->name('users.store');
    Route::get('users/create','UserController@create')->name('users.create');
    Route::get('users/view/{id}','UserController@show')->name('users.view');
    Route::get('users/edit/{id}','UserController@edit')->name('users.edit');
    Route::patch('users/update/{id}','UserController@update')->name('users.update');
    Route::DELETE('users/delete/{id}','UserController@destroy')->name('users.destroy');
//    Route::get('users/getUser','UserController@GetUser')->name('users.getUser');

    Route::get('roles','RoleController@index')->name('roles');
    Route::post('roles','RoleController@store')->name('roles.store');
    Route::get('roles/create','RoleController@create')->name('roles.create');
    Route::get('roles/show/{id}','RoleController@show')->name('roles.show');
    Route::get('roles/edit/{id}','RoleController@edit')->name('roles.edit');
    Route::patch('roles/update/{id}','RoleController@update')->name('roles.update');
    Route::DELETE('roles/delete/{id}','RoleController@destroy')->name('roles.destroy');
//    Route::get('roles/getRole','RoleController@GetRole')->name('roles.getRole');

    Route::get('categories','CategoriesController@index')->name('categories');
    Route::post('categories','CategoriesController@store')->name('categories.store');
    Route::get('categories/create','CategoriesController@create')->name('categories.create');
    Route::get('categories/edit/{id}','CategoriesController@edit')->name('categories.edit');
    Route::patch('categories/update/{id}','CategoriesController@update')->name('categories.update');
});

