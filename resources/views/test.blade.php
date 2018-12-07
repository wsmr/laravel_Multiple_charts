@extends('crudbooster::admin_template')
@section('content')


<div class='row'>
  <div class='col-md-12'>


    <div class='col-md-6'>
      <!-- Box -->
      <div class="box box-primary">
        <div class="box-header with-border">

          <h3 class="box-title">Action Item Count by Owner</h3>

          <div class="box-tools pull-right">
            <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            <!--<button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>-->
          </div>
        </div>

        <div class="box-body">

          <h2>Chart js1</h2><br/>

          <div id="app" style="width:100%; height:8%;">
            {!! $chartjs1->render() !!}
          </div>

          <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script><!-- /.box-body -->

          <div class="box-footer">
          </div>
          <!-- /.box-footer-->
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
    </div>
  </div>

  <div class='col-md-12'>

    <div class='col-md-6'>
      <!-- Box -->
      <div class="box box-primary">
        <div class="box-header with-border">

          <h3 class="box-title">Action Item Count by Owner</h3>

          <div class="box-tools pull-right">
            <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            <!--<button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>-->
          </div>
        </div>

        <div class="box-body">

          <h2></h2><br/>

          <div id="app">
            {!! $StatusSummeryByOwner->container() !!}
          </div>

          <script src=https://cdnjs.cloudflare.com/ajax/libs/echarts/4.0.2/echarts-en.min.js charset=utf-8></script>
          {!! $StatusSummeryByOwner->script() !!}
        </div>
        <!-- /.box-body -->

        <div class="box-footer">
        </div>
        <!-- /.box-footer-->

      </div>
      <!-- /.box -->
    </div>
  </div>

</div>



@endsection
