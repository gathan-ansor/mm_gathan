<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pemasok extends Model
{
    protected $table = 'table_pemasok';
    protected $fillable = ['kode_pemasok','nama_pemasok','alamat','kota','no_telp'];
}
