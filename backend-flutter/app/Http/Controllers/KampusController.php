<?php

namespace App\Http\Controllers;

use App\Models\kampus;
use Illuminate\Http\Request;

class KampusController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = kampus::all();
        return response()->json($data, 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $kampus = Kampus::create($request->all());
        if($request->hasFile('banner')){
            $request->file('banner')->move('images/', $request->file('banner')->getClientOriginalName());
            $kampus->banner = $request->file('banner')->getClientOriginalName();
            $kampus->save();
        };
        if($request->hasFile('foto1')){
            $request->file('foto1')->move('images/', $request->file('foto1')->getClientOriginalName());
            $kampus->foto1 = $request->file('foto1')->getClientOriginalName();
            $kampus->save();
        };
        if($request->hasFile('foto2')){
            $request->file('foto2')->move('images/', $request->file('foto2')->getClientOriginalName());
            $kampus->foto2 = $request->file('foto2')->getClientOriginalName();
            $kampus->save();
        };
        if($request->hasFile('foto3')){
            $request->file('foto3')->move('images/', $request->file('foto3')->getClientOriginalName());
            $kampus->foto3 = $request->file('foto3')->getClientOriginalName();
            $kampus->save();
        };
        return response()->json($kampus, 201);
    }

    public function showImage($data){
        //tampilkan gambar di publik
        $path = public_path('images/'.$data);
        return response()->file($path);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $kampus = Kampus::find($id);
        return response()->json($kampus, 200);
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
        $kampus = Kampus::find($id);
        $kampus->nama = $request->nama;
        $kampus->alamat = $request->alamat;
        $kampus->bio = $request->bio;
        $kampus->hari = $request->hari;
        $kampus->jam_buka = $request->jam_buka;
        $kampus->jam_tutup = $request->jam_tutup;
        $kampus->tiket = $request->tiket;
        $kampus->banner = $request->banner;
        $kampus->foto1 = $request->foto1;
        $kampus->foto2 = $request->foto2;
        $kampus->foto3 = $request->foto3;
        $kampus->save();
        return response()->json($kampus, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Kampus::destroy($id);
        return response()->json([
            'message' => 'Data berhasil dihapus'
        ], 204);
    }
}
