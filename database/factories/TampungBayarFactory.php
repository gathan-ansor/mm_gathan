<?php

use Faker\Generator as Faker;

$factory->define(App\TampungBayar::class, function (Faker $faker) {
    return [
        'penjualan_id' => $faker->randomElement(App\penjualan::select('id')->get()),
        'total' => $faker->numberBetween(1,1000),
        'terima' => $faker->numberBetween(1,1000),
        'kembali' =>$faker->numberBetween(1,1000),
    ];
});
