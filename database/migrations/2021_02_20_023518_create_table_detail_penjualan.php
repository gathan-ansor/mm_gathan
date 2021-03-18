<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDetailPenjualan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_detail_penjualan', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->biginteger('penjualan_id', 0);
            $table->biginteger('barang_id', 0);
            $table->double('harga_jual');
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
        Schema::dropIfExists('table_detail_penjualan');
    }
}
