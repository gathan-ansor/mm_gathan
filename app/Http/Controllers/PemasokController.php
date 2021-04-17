<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pemasok;

class PemasokController extends Controller
{
   	public function index(){
   		$data['result'] = \App\pemasok::all();
   		$lastId = pemasok::select('kode_pemasok')->orderBy('created_at', 'desc')->first();
   		$data['kode_pemasok'] = ($lastId = null ? 'SUP000001' : sprintf('SUP%06d', substr($lastId->kode_pemasok, 3)+1));
   		return view('pemasok/index')->with($data);
   	}

   	public function store(Request $request){
   		$rules = [
   			'nama_pemasok' => 'required|max:100',
   			'alamat' => 'required|min:5',
   			'to_telp' => 'required|min:10'
   		];
   		$this->validate($request, $rules);
   		$input = $request->all();
   		// dd($input);
   		$status = \App\pemasok::create($input);

   		if($status)
   			return redirect('pemasok')->with('success', 'Data pemasok berhasil ditambahkan');
   		else
   			return redirect('pemasok')->with('error', 'Data pemasok gagal ditambahkan');
   	}

   	public function update(Request $request){
   		$rules = [
   			'nama_pemasok' => 'required|max:100',
   			'alamat' => 'required|min:5',
   			'to_telp' => 'required|min:10'
   		];
   		$this->validate($request, $rules);
   		$input = $request->all();
   		$result = \App\pemasok::where('kode_pemasok', $request->kode_pemasok)->first();
   		$status = $result->update($input);

   		if($status)
   			return redirect('pemasok')->with('success', 'Data pemasok berhasil diupdate');
   		else
   			return redirect('pemasok')->with('error', 'Data pemasok gagal diupdate');
   	}

   	public function destroy(Request $request){
   		$pemasok = \App\pemasok::where('kode_pemasok', $request->id_hapus)->first();
   		$status = $pemasok->delete();

   		if($status)
   			return redirect('pemasok')->with('success', 'Data pemasok berhasil dihapus');
   		else
   			return redirect('pemasok')->with('error', 'Data pemasok gagal dihapus');
   	}
}
