<?php


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Charts\Test;
use App\Charts\Test2;
use App\Charts\Test3;
use App\Footballfan;

use Khill\Lavacharts\Lavacharts;

use DB;
use CRUDbooster;
use Session;

class EChartController extends Controller
{
  public function index(){
    //if(!CRUDBooster::isView()) CRUDBooster::denyAccess();

    $label = DB::table('Status_summery_by_owner')->pluck('Name')->toArray();
	  $open = DB::table('Status_summery_by_owner')->pluck('Opened')->toArray();
    $inprogress = DB::table('Status_summery_by_owner')->pluck('Inprogress')->toArray();
    $completed = DB::table('Status_summery_by_owner')->pluck('Completed')->toArray();


    $StatusSummeryByOwner = new Test2;
    $StatusSummeryByOwner->labels($label);

    $StatusSummeryByOwner->dataset('Open', 'bar',$open);
    $StatusSummeryByOwner->dataset('Inprogress', 'bar',$inprogress);
    $StatusSummeryByOwner->dataset('Completed', 'bar',$completed);
  //                       ->color('#a52a2a')
  //                       ->backgroundcolor(['#bc8f8f','#090979', '#5d0979', '#097970', '#117909', '#797209']);



      $high = new Test3;
      $high->labels($label);
      $high->dataset('Open','map',$open);
      $high->dataset('Inprogress','map',$inprogress);
      $high->dataset('Completed','map',$completed);

      $tables = DB::table('Status_summery_by_owner')->get();

      $lava = new Lavacharts;
      $fans = $lava->DataTable();
      // $value=DB::table('footballfans')
      //           ->where('footballteam', '0')
      //           ->where('fan','1')
      //           ->get() ->toArray();
	    // $fans->addStringColumn('Football Team')
		  //          ->addNumberColumn('Football Fans')
		  //          ->addRows($value);
      $value=Footballfan::select('footballteam as 0', 'fan as 1')
                        ->get()
                        ->toArray();
	    $fans->addStringColumn('Football Team')
		           ->addNumberColumn('Football Fans')
		           ->addRows($value);
      $lava->GeoChart('Football Fans', $fans);




        $chartjs1 = app()->chartjs
                         ->name('lineChartTest')
                         ->type('horizontalBar')
                         ->size(['width' => 200, 'height' => 200])
                         ->labels($label)
                         ->datasets([
                    [
                        "label" => "Open",
                        'backgroundColor' => "rgba(38, 185, 154, 0.31)",
                        'borderColor' => "rgba(38, 185, 154, 0.7)",
                        "pointBorderColor" => "rgba(38, 185, 154, 0.7)",
                        "pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
                        "pointHoverBackgroundColor" => "#fff",
                        "pointHoverBorderColor" => "rgba(220,220,220,1)",
                        'data' => $open,
                    ],
                    [
                        "label" => "Inprogress",
                        'backgroundColor' => "rgba(38, 185, 154, 1.31)",
                        'borderColor' => "rgba(38, 185, 154, 0.7)",
                        "pointBorderColor" => "rgba(38, 185, 154, 0.7)",
                        "pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
                        "pointHoverBackgroundColor" => "#fff",
                        "pointHoverBorderColor" => "rgba(220,220,220,1)",
                        'data' => $inprogress,
                    ],
                    [
                        "label" => "Completed",
                        'backgroundColor' => "rgba(20, 100, 154, 0.31)",
                        'borderColor' => "rgba(38, 185, 154, 0.7)",
                        "pointBorderColor" => "rgba(38, 185, 154, 0.7)",
                        "pointBackgroundColor" => "rgba(38, 185, 154, 0.7)",
                        "pointHoverBackgroundColor" => "#fff",
                        "pointHoverBorderColor" => "rgba(220,220,220,1)",
                        'data' => $completed,
                    ]
                ])
                      ->options([])
                      ->optionsRaw([
                    'legend' => [
                                  'display' => true,
                                  'labels' => ['fontColor' => '#000'] ],
                    'scales' => [
                        'xAxes' => [
                                    [ 'stacked' => true,
                                      'gridLines' => [ 'display' => true ]
                                    ]
                                  ],

                        'yAxes'  => [
                                      [ 'stacked' => true,
                                        'gridLines' => [ 'display' => true ]
                                      ]
                                    ]
                                ]
                ]);




      return view('EChart', compact('StatusSummeryByOwner','high','lava','chartjs1','tables'));


}
}
