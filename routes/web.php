<?php

use illuminate\Support\Facades\Route;

Route::get('/','HomeController@index');

Route::get('pemasok','PemasokController@index');
Route::post('pemasok','PemasokController@store');
Route::patch('pemasok','PemasokController@update');
Route::delete('pemasok','PemasokController@destroy');
Route::get('pemasok/export/xls', 'PemasokController@exportToExcel');
Route::get('cetakpdf', 'PemasokController@cetakpdf');

Route::get('barang','BarangController@index');
Route::post('barang','BarangController@store');
Route::put('barang','BarangController@update');
Route::delete('barang','BarangController@destroy');


Route::get('Klas', 'KlasController@index');
Route::post('Klas', 'KlasController@store')->name('tambah_bangsat');
Route::put('Klas', 'KlasController@update');
Route::delete('Klas', 'KlasController@destroy');

Route::get('tarik', 'tarikController@index');
Route::post('tarik','tarikController@store');
Route::patch('tarik','tarikController@update');
Route::delete('tarik','tarikController@destroy');
