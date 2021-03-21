<?php

use Faker\Generator as Faker;

$factory->define(App\DetailPelanggan::class, function (Faker $faker) {
    return [
        'kode_pelanggan' => "KP".sprintf('%08d',$faker->unique()->numberBetween(1,99999999)),
        'nama' => $faker->name,
        'alamat' => $faker -> address,
        'no_telp' => $faker -> phoneNumber,
        'email' => $faker->unique()->safeEmail
    ];
});
