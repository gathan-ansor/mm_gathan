<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class produk extends Model
{
   public $primaryKey = 'id';

   protected $table = 'table_produks';

   protected $fillable = 
   [
   	'nama_produk'
   ];
}
