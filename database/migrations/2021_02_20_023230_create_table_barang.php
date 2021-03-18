<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBarang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_barang', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->string('kode_barang', 50);
            $table->biginteger('produk_id', 0);
            $table->string('nama_barang', 100);
            $table->string('satuan', 10);
            $table->double('harga_jual', 0);
            $table->string('stok', 5);
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
        Schema::dropIfExists('table_barang');
    }
}
