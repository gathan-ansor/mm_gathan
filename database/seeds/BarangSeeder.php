<?php

use Illuminate\Database\Seeder;
use App\barang;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       factory(App\barang::class,50) -> create();
    }
}
