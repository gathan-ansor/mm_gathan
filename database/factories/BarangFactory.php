<?php

use Faker\Generator as Faker;

$factory->define(App\barang::class, function (Faker $faker) {
    return [
        'kode_barang' => "K".sprintf('%08d',$faker->unique()->numberBetween(1,99999999)),
        'produk_id' => $faker->randomElement(App\barang::select('id')->get()),
        'nama_barang' => $faker->randomElement(['Mie Sedap Ayam Bawang','Sabun Lifebuoy']),
        'satuan' => $faker->randomElement(['pcs','item','kardus']),
        'harga_jual' => $faker->numberBetween(1000,100000),
        'stok' => $faker->numberBetween(1,1000)
    ];
});
