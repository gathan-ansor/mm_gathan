<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
      $this->call(UserSeeder::class);
      //$this->call(PemasokSeeder::class);
      //$this->call(BarangSeeder::class);
      //$this->call(ProdukSeeder::class);
      //$this->call(PembelianSeeder::class);
      //$this->call(DetailPembelianSeeder::class);
      //$this->call(DetailPelangganSeeder::class);
      //$this->call(PenjualanSeeder::class);
      //$this->call(DetailPenjulanSeeder::class);
      //$this->call(TampungBayarSeeder::class);
    }
}
