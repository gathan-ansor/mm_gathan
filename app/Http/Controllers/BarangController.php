<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BarangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $data['result'] = \App\barang::all();
        return view('barang/index')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('barang/form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            //'nama' => 'required|max:100',
            //'alamat' => 'required|max:100',
            //'tanggal_lahir' => 'required|max:100',
            //'jk' => 'required|max:100',
            //'agama' => 'required|max:100',
            //'username' => 'required|max:100',
            //'password' => 'required|max:100',
        ];
        $this->validate ($request, $rules);        

        $input = $request->all();
        $status = \App\barang::create($input);

        if ($status) return redirect('barang')->with('success', 'Data berhasil ditambahkan');
        else return redirect('barang')->with('error', 'Data gagal ditambahkan');    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['result'] = \App\Klas::where('id', $id_edit)->first();
        return view('barang/form')->with($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $result = \App\barang::where('id', $request->id_hapus)->first();
        $status = $result->delete();

        if($status) return redirect('barang')->with('success', "Data berhasil dihapus");
        else return redirect('barang')->with('error', "Data gagal dihapus");
    }
}
