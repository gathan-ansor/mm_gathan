<?php

use Faker\Generator as Faker;

$factory->define(App\produk::class, function (Faker $faker) {
    return [
        'nama_produk' => $faker->randomElement(['Mie Sedap Ayam Bawang','Sabun Lifebuoy'])
    ];
});
