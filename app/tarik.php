<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tarik extends Model
{
	public $primaryKey = 'kode_tarik';
    protected $table = 'penarikan_barang';
    protected $fillable = ['nama_barang','tanggal','qty','ditarik'];
}
