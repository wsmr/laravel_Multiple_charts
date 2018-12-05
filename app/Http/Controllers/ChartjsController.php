<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Charts\Test;
use App\Chart;

use Session;
use DB;
use CRUDbooster;


class ChartjsController extends Controller
{
  public function index(){
    if(!CRUDBooster::isView()) CRUDBooster::denyAccess();

	   $label = DB::table('ActivityCountByOwner')->pluck('Owner')->toArray();
	   $data = DB::table('ActivityCountByOwner')->pluck('Open')->toArray();

	$chart1 = new Test;
	$chart1->labels($label);
	$chart1->dataset('Products', 'bar', $data)
         ->color('#a52a2a')
         ->backgroundcolor(['#bc8f8f','#001f3f', '#0074D9', '#FF851B', '#111111', '#2ECC40']);
  $chart1->options([
    'tooltip' => [
    'show' => true // or false, depending on what you want.
    ]
  ]);

  $chart2 = new Test;
  $chart2->labels($label);
  $chart2->dataset('Products', 'pie', $data)
         ->color('#a52a2a')
         ->backgroundcolor(['#bc8f8f','#090979', '#5d0979', '#097970', '#117909', '#797209']);
  $chart2->options([
    'tooltip' => [
    'show' => true // or false, depending on what you want.
    ]
  ]);

  $chart3 = new Test;
  $chart3->labels($label);
  $chart3->dataset('Products', 'line', $data)
         ->color('#bc8f8f')
         ->backgroundcolor('transparent');
  //->options(['color' => '#aa0000',]);
  $chart3->options([
    'tooltip' => [
    'show' => true // or false, depending on what you want.
        ]]);

  $chart4 = new Test;
	$chart4->labels($label);
	$chart4->dataset('Products', 'doughnut', $data)
         ->color('#a52a2a')
         ->backgroundcolor(['#bc8f8f','#090979', '#5d0979', '#097970', '#117909', '#797209']);
  $chart4->options([
    'tooltip' => [
    'show' => true // or false, depending on what you want.
        ]]);

  return view('Chartjs', compact('chart1','chart2','chart3','chart4'));

  }
}
