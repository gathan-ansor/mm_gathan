<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableTampungBayar extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_tampung_bayar', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->biginteger('penjualan_id', 0);
            $table->double('total');
            $table->double('terima');
            $table->double('kembali');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_tampung_bayar');
    }
}
