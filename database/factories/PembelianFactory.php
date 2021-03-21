<?php

use Faker\Generator as Faker;

$factory->define(App\pembelian::class, function (Faker $faker) {
    return [
        'kode_masuk' => "PE".sprintf('%08d',$faker->unique()->numberBetween(1,99999999)),
        'tanggal_masuk' => $faker->dateTimeBetween($startDate = '-5years', $endDate = 'now'),
        'total' => $faker->numberBetween(1,1000),
        'pemasok_id' => $faker->randomElement(App\pemasok::select('id')->get()),
        'user_id' => $faker->randomElement(App\User::select('id')->get()),
    ];
});
