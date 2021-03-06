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

Route::get('/', function () {
    return view('welcome');
});


Route::resource('users', 'UserController');
//Route::get('/login', 'Auth\LoginController');

Auth::routes();

Route::get('/home', 'UserController@index')->name('home');

Route::get('/logout', 'Auth\LoginController@logout')->name('logout');
