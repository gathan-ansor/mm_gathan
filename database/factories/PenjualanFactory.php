<?php

use Faker\Generator as Faker;

$factory->define(App\penjualan::class, function (Faker $faker) {
    return [
        'no_faktur' => "FAK".sprintf('%08d',$faker->unique()->numberBetween(1,99999999)),
        'tgl_faktur' => $faker->dateTimeBetween($startDate = '-3years', $endDate = 'now'),
        'total_bayar' => $faker->numberBetween(1,1000),
        'pelanggan_id' => $faker->randomElement(App\DetailPelanggan::select('id')->get()),
        'user_id' => $faker->randomElement(App\User::select('id')->get()),
    ];
});
