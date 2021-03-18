<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDetailPembelian extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_detail_pembelian', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->biginteger('pembelian_id', 0);
            $table->biginteger('barang_id', 0);
            $table->double('harga_beli');
            $table->biginteger('jumlah', 0);
            $table->double('sub_total');
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
        Schema::dropIfExists('table_detail_pembelian');
    }
}
