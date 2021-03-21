<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailPelanggan extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_detail_pelanggan';

   protected $fillable = 
   [
   	'kode_pelanggan','nama','alamat','no_telp','email'
   ];
}
