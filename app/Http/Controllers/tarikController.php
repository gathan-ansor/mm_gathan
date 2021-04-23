<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class tarikController extends Controller
{
    public function index()
    {
         $data['result'] = \App\tarik::all();
        return view('tarik/index')->with($data);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        $pemasok = \App\tarik::create($input);

        return redirect('tarik');
    }

    public function update(Request $request){   
        $data = $request->all();
        $result = \App\tarik::where('kode_tarik', $request->kode_tarik)->first();
        $status = $result->update($data);
        
        return redirect('tarik');
    }

    public function destroy(Request $request){
        $result = \App\tarik::where('kode_tarik', $request->id_hapus)->first();
        $status = $result->delete();

        return redirect('tarik');
    }
}
