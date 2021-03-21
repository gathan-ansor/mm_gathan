<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class penjualan extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_penjualan';

   protected $fillable = 
   [
   	'no_faktur','tgl_faktur','total_bayar','pelanggan_id','user_id'
   ];
}
