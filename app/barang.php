<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class barang extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_barang';

   protected $fillable = 
   [
   	'kode_barang','produk_id','nama_barang','satuan','harga_jual','stok'
   ];
}
