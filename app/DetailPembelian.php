<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailPembelian extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_detail_pembelian';

   protected $fillable = 
   [
   	'pembelian_id','barang_id','harga_beli','jumlah','sub_total'
   ];
}
