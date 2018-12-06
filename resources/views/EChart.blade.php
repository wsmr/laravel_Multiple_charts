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
          <div class="grid-item">

            <a class="btn btn-info" href="http://127.0.0.1:8000/admin" >Primary</button></a>
          </div>

          <h2>Laravel GeoChart Example</h2><br/>

          <div id="geo"></div>
          <?= $lava->render('GeoChart', 'Football Fans', 'geo') ?>
        </div>
        <!-- /.box-body -->

        <div class="box-footer">
        </div><!-- /.box-footer-->

      </div>
      <!-- /.box -->

    </div>

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

          <div id="app" style="width:80%;">
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

          <h2>Chart Table</h2><br/>

          <div id="app" style="width:80%;">

            <form action="/search" method="POST" role="search">
              {{ csrf_field() }}
              <div class="input-group">
                <input type="text" class="form-control" name="q" placeholder="Search owner">
                <span class="input-group-btn">
                  <button type="submit" class="btn btn-default">
                    <span class="glyphicon glyphicon-search"></span>
                  </button>
                </span>
              </div>
            </form>

            <table class="table table-hover table-dark" border = 5>
              <thead>
                <tr class="bg-primary">
                  <td>Name</td>
                  <td>Short code</td>
                  <td>opened</td>
                  <td>In progress</td>
                  <td>Completed</td>
                </tr>
              </thead>
              @foreach ($tables as $table)
              <tr>
                <td>{{ $table->Name }}</td>
                <td>{{ $table->Short_code }}</td>
                <td>{{ $table->Opened }}</td>
                <td>{{ $table->Inprogress }}</td>
                <td>{{ $table->Completed }}</td>
              </tr>
              @endforeach
            </table>
          </div>

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
</div>



@endsection
