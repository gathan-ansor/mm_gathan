<?php

use Faker\Generator as Faker;

$factory->define(App\DetailPembelian::class, function (Faker $faker) {
    return [
        'pembelian_id' => $faker->randomElement(App\pembelian::select('id')->get()),
        'barang_id' => $faker->randomElement(App\barang::select('id')->get()),
        'harga_beli' => $faker->numberBetween(1000,100000),
        'jumlah' => $faker->numberBetween(1,1000),
        'sub_total' => $faker->numberBetween(1,500)
    ];
});
