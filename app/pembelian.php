<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pembelian extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_pembelian';

   protected $fillable = 
   [
   	'kode_masuk','tanggal_masuk','total','pemasok_id','user_id'
   ];
}
