<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePembelian extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_pembelian', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->string('kode_masuk', 50);
            $table->date('tanggal_masuk');
            $table->double('total');
            $table->biginteger('pemasuk_id', 0);
            $table->biginteger('user_id', 0);
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
        Schema::dropIfExists('table_pembelian');
    }
}
