<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BarangController extends Controller
{
    public function index()
    {
         $data['result'] = \App\barang::all();
        return view('barang/index')->with($data);
    }

    public function create()
    {
        return view('barang/form');
    }

    public function store(Request $request)
    {
        $rules = [
            //
        ];
        $this->validate ($request, $rules);        

        $input = $request->all();
        $status = \App\barang::create($input);

        if ($status) return redirect('barang')->with('success', 'Data berhasil ditambahkan');
        else return redirect('barang')->with('error', 'Data gagal ditambahkan');    
	}

	public function edit($id_edit)
    {
        $data['result'] = \App\barang::where('id', $id_edit)->first();
        return view('barang/form')->with($data);
    }

    public function update(Request $request)
    {
        $rules = [
            //
        ];
        $this->validate($request, $rules);        

        $input  = $request->all();
        $result = \App\barang::where('id', $request->id)->first();
        $status = $result->update($input);

        if ($status) return redirect('barang')->with('success', "Data berhasil diubah");
        else return redirect('barang')->with('error', "Data gagal diubah");
    }

    public function destroy(request $request)
    {
        $result = \App\barang::where('id', $request->id_hapus)->first();
        $status = $result->delete();

        if($status) return redirect('barang')->with('success', "Data berhasil dihapus");
        else return redirect('barang')->with('error', "Data gagal dihapus");
    }
}
