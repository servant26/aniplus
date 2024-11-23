@extends('layouts.adminlayout')

@section('content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h4>Dashboard Page</h4>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Admin</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
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
            <div class="small-box bg-primary">
              <div class="inner">
                <h3>{{ $data->count() }}</h3>

                <p>Total Requests</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
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
                <h4>List Requests User</h4>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                    <th style="width: 5%;">No.</th>
                    <th>Anime Name</th>
                    <th>Anime Description</th>
                    <th style="width: 18%;">Status</th>
                    <th>Hapus</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td> <!-- This will display the serial number -->
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->description }}</td>
                        <td>
                        <!-- Button with status "belum ditanggapi" -->
                        <button class="btn btn-outline-danger status-button" data-id="{{ $item->id }}" onclick="toggleStatus(this)">
                            Belum Ditanggapi
                        </button>
                        </td>  
                        <td>
                          <form action="{{ route('adminsrvnt.destroyreq', $item->id) }}" method="POST" style="display: inline;">
                            @csrf
                          <button type="submit" class="btn btn-danger delete-btn" onclick="return confirm('Are you sure you want to delete this req?');">Hapus</button>
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
