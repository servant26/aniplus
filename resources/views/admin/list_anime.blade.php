@extends('layouts.adminlayout')

@section('content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h4>List Anime</h4>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Admin</a></li>
              <li class="breadcrumb-item active">List Anime</li>
            </ol>
          </div>
        </div>
    </div><!-- /.container-fluid -->
</section>
<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-12 col-12">
        <!-- small box -->
        <div class="small-box bg-success">
          <div class="inner">
            <h3>{{ $data->count() }}</h3>
            <p>Total Anime</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
          <a class="btn btn-primary" href="{{ route('anime.create') }}" role="button">Add Anime</a>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped table-hover">
              <thead>
                <tr>
                  <th style="width: 5%;">No.</th>
                  <th>Anime Name</th>
                  <th>Alternative</th>
                  <th>Score</th>
                  <th>Episode</th>
                  <th>Release Date</th>
                  <th>Genre</th>
                  <th>Studio</th>
                  <th style="width: 15%;">Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach($data as $item)
                <tr>
                  <td>{{ $loop->iteration }}</td> <!-- This will display the serial number -->
                  <td>{{ $item->judul }}</td>
                  <td>{{ $item->judul_inggris }}</td>
                  <td>{{ $item->score }}</td>
                  <td>{{ $item->episode }}</td>
                  <td>{{ $item->tgl_rilis }}</td> <!-- Format date to '5 April 2009' -->
                  <td>{{ str_replace(["[", "]", "'"], "", $item->genre) }}</td>
                  <td>{{ str_replace(["[", "]", "'"], "", $item->studio) }}</td>
                  <td>
                    <a class="btn btn-warning" href="{{ route('anime.edit', $item->id) }}" role="button">Edit</a>
                    <form action="{{ route('anime.destroy', $item->id) }}" method="POST" style="display: inline;">
                      @csrf
                    <button type="submit" class="btn btn-danger delete-btn" onclick="return confirm('Are you sure you want to delete this anime?');">Hapus</button>
                    </form>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container-fluid -->
</section>
<!-- /.content -->
@endsection
