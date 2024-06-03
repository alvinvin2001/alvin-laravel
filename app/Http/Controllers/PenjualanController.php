<?php

namespace App\Http\Controllers;

use App\Models\Penjualan;
use Illuminate\Http\Request;

class PenjualanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $penjualans = Penjualan::paginate(10);
        return response()->json([
            'data' => $penjualans
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
        $penjualan = Penjualan::create([
            'id_nota' => $request->id_nota,
            'tgl'=> $request->tgl,
            'kode_pelanggan' => $request->kode_pelanggan,
            'subtotal' => $request->subtotal
        ]);
        return response()->json([
            'data' => $penjualan
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function show(Penjualan $penjualan)
    {
        return response()->json([
            'data' => $penjualan
        ]);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Penjualan $penjualan)
    {
        $penjualan->id_nota = $request->id_nota;
        $penjualan->tgl = $request->tgl;
        $penjualan->kode_pelanggan = $request->kode_pelanggan;
        $penjualan->subtotal = $request->subtotal;
        $penjualan->save();

        return response()->json([
            'data' => $penjualan
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Penjualan  $penjualan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Penjualan $penjualan)
    {
        $penjualan->delete();
        return response()->json([
            'message' => 'penjualan deleted'
        ], 204);
    }
}
