<?php

Route::get('/','HomeController@index');
Route::resource('pemasok','PemasokController');
Route::resource('barang','BarangController');

