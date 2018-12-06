@extends('crudbooster::admin_template')
@section('content')


<div class='row'>
  <div class='col-md-12'>
    <div class='col-md-6'>

      <!-- Box -->
      <div class="box box-primary">
        <div class="box-header with-border">

          <h3 class="box-title"> Search in Status Summery By Owner</h3>

          <div class="box-tools pull-right">
            <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            <!--<button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>-->
          </div>
        </div>

        <div class="box-body">
          <div id="app" style="width:80%;">

            @if(isset($details))

            <p> The Search results for your query <b> {{ $query }} </b> are :</p>
            <h2> details</h2>

            <table class="table table-hover table-dark" border = 5>

              <thead>
                <tr class="bg-primary">
                  <td>Name</td>
                  <td>Short code</td>
                  <td>opened</td>
                </tr>
              </thead>
              <tbody>
                @foreach($details as $user)
                <tr>
                  <td>{{ $user->Name }}</td>
                  <td>{{ $user->Short_code }}</td>
                  <td>{{ $user->Opened }}</td>
                </tr>
                @endforeach
              </tbody>
            </table>
            @endif
          </div>
        </div>
        <!-- /.box-body -->

        <div class="box-footer">
        </div><!-- /.box-footer-->

      </div>
      <!-- /.box -->

    </div>
    <!-- /.col-md-6 -->
  </div>
  <!-- /.col-md-12 -->
</div>
<!-- /.row -->


@endsection
