<?php

Route::get('/','HomeController@index');
Route::resource('pemasok','PemasokController');
Route::resource('barang','BarangController');

Route::get('pembelian','PembelianController@index');
Route::post('pembelian','PembelianController@store');
Route::patch('pembelian','PembelianController@update');
Route::delete('pembelian','PembelianController@destroy');

// Route::get('barang','PembelianController@index');
// Route::post('barang','PembelianController@store');
// Route::patch('barang','PembelianController@update');
// Route::delete('barang','PembelianController@destroy');