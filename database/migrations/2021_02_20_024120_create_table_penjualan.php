<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePenjualan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_penjualan', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->string('no_faktur', 50);
            $table->date('tgl_faktur');
            $table->double('total_bayar');
            $table->biginteger('pelanggan_id', 0);
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
        Schema::dropIfExists('table_penjualan');
    }
}
