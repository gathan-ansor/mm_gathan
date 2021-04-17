<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pembelian;
use App\pemasok;
use App\barang;

class PembelianController extends Controller
{
   public function index()
    {
        $lastId = pembelian::orderBy('created_at','desc')->first();
        $data['kode'] = sprintf('PE%08d', substr($lastId,1)+1);
        $data['pemasok'] = pemasok::get();
        $data['barang'] = barang::get();

        return view('pembelian/index')->with($data);
    }
}
