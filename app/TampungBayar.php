<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TampungBayar extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_Tampung_Bayar';

   protected $fillable = 
   [
   	'penjualan_id','total','terima','kembali'
   ];
}
