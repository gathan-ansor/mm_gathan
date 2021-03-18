<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDetailPelanggan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_detail_pelanggan', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->string('kode_pelanggan', 50);
            $table->string('nama', 50);
            $table->string('alamat', 200);
            $table->string('no_telp', 20);
            $table->string('email', 50);
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
        Schema::dropIfExists('table_detail_pelanggan');
    }
}
