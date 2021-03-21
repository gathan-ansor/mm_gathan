<?php

use Faker\Generator as Faker;

$factory->define(App\DetailPenjualan::class, function (Faker $faker) {
    return [
        'penjualan_id' => $faker->randomElement(App\penjualan::select('id')->get()),
        'barang_id' => $faker->randomElement(App\barang::select('id')->get()),
        'harga_jual' => $faker->numberBetween(1000,100000),
        'jumlah' => $faker->numberBetween(1,1000),
        'sub_total' => $faker->numberBetween(1,500)
    ];
});
