<?php

use Illuminate\Database\Seeder;

class DetailPenjulanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       factory(App\DetailPenjualan::class,50) -> create();
    }
}
