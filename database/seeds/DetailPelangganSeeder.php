<?php

use Illuminate\Database\Seeder;

class DetailPelangganSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\DetailPelanggan::class,50) -> create();
    }
}
