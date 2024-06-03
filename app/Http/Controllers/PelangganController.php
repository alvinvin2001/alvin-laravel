<?php

namespace App\Http\Controllers;

use App\Models\Pelanggan;
use Illuminate\Http\Request;

class PelangganController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pelanggans = Pelanggan::paginate(10);
        return response()->json([
            'data' => $pelanggans
        ]);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $pelanggan = Pelanggan::create([
            'id_pelanggan' => $request->id_pelanggan,
            'nama'=> $request->nama,
            'domisili' => $request->domisili,
            'jenis_kelamin' => $request->jenis_kelamin
        ]);
        return response()->json([
            'data' => $pelanggan
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function show(Pelanggan $pelanggan)
    {
        return response()->json([
            'data' => $pelanggan
        ]);
    }

    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pelanggan $pelanggan)
    {
        $pelanggan->id_pelanggan = $request->id_pelanggan;
        $pelanggan->nama = $request->nama;
        $pelanggan->domisili = $request->domisili;
        $pelanggan->jenis_kelamin = $request->jenis_kelamin;
        $pelanggan->save();

        return response()->json([
            'data' => $pelanggan
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pelanggan $pelanggan)
    {
        $pelanggan->delete();
        return response()->json([
            'message' => 'pelanggan deleted'
        ], 204);
    }
}
