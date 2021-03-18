<?php

use Illuminate\Database\Seeder;
use App\pemasok;

class PemasokSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\pemasok::class,50) -> create();
    }
}
