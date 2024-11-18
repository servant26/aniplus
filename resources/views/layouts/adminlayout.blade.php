<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
  <link rel="icon" href="{{ asset('gambar/icon.png') }}" type="image/png">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('dist/css/adminlte.min.css') }}">
  <link href="{{ asset('bt\css\bootstrap.min.css') }}" rel="stylesheet">
  <script src="{{ asset('bt\js\bootstrap.bundle.min.js') }}"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link"><span id="currentDate"></span></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Aniplus</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('gambar/profile.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Welcome Admin</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="/adminsrvnt" class="nav-link {{ request()->is('adminsrvnt') ? 'active' : '' }}">
              <i class="nav-icon fa fa-home"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
          <a href="/list_anime" class="nav-link {{ request()->is('list_anime') || request()->is('anime/create') || request()->is('anime/edit/*') ? 'active' : '' }}">
              <i class="nav-icon fa fa-list"></i>
              <p>
                List Anime
              </p>
            </a>
          </li>
          <li class="nav-item">
              <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                  <i class="nav-icon fa fa-power-off"></i>
                  <p>Logout</p>
              </a>
              <form id="logout-form" action="{{ route('logout') }}" method="GET" style="display: none;">
                  @csrf
              </form>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
@yield('content')
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; <a href="#">Srvnt07</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<!-- DataTables & Plugins -->
<script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
<script src="{{ asset('plugins/jszip/jszip.min.js') }}"></script>
<script src="{{ asset('plugins/pdfmake/pdfmake.min.js') }}"></script>
<script src="{{ asset('plugins/pdfmake/vfs_fonts.js') }}"></script>
<script src="{{ asset('plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('dist/js/adminlte.min.js') }}"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="{{ asset('dist/js/demo.js') }}"></script> -->

<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, 
      "lengthChange": false, // Disable length change in the UI
      "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
      "pageLength": 5 // Limit to 5 rows per page
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  });

// Function to toggle the status of the button
function toggleStatus(button) {
  // Get the current button's ID or another unique identifier
  const buttonId = button.dataset.id;

  // Check if the button is currently showing "Belum Ditanggapi"
  if (button.innerText === 'Belum Ditanggapi') {
    // Change the button to "Sudah Ditanggapi"
    button.innerText = 'Sudah Ditanggapi';
    button.classList.remove('btn-outline-danger');
    button.classList.add('btn-outline-success');
    // Save the status in localStorage
    localStorage.setItem(buttonId, 'Sudah Ditanggapi');
  } else {
    // Change the button back to "Belum Ditanggapi"
    button.innerText = 'Belum Ditanggapi';
    button.classList.remove('btn-outline-success');
    button.classList.add('btn-outline-danger');
    // Save the status in localStorage
    localStorage.setItem(buttonId, 'Belum Ditanggapi');
  }
}

// Function to initialize the button status based on localStorage
function initializeButtonStatus() {
  const buttons = document.querySelectorAll('.status-button');

  buttons.forEach(function(button) {
    const buttonId = button.dataset.id;

    // Check if the status is stored in localStorage
    const status = localStorage.getItem(buttonId);
    if (status) {
      // Set the button text and class based on the stored status
      button.innerText = status;
      if (status === 'Sudah Ditanggapi') {
        button.classList.remove('btn-outline-danger');
        button.classList.add('btn-outline-success');
      } else {
        button.classList.remove('btn-outline-success');
        button.classList.add('btn-outline-danger');
      }
    }
  });
}

// Initialize button status when the page is loaded
window.onload = initializeButtonStatus;
// Mendapatkan hari dan tanggal saat ini
const days = ["Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];
const today = new Date();
const dayName = days[today.getDay()];
const date = today.toLocaleDateString('id-ID', {
    day: 'numeric',
    month: 'long',
    year: 'numeric'
});

// Menampilkan hari dan tanggal
document.getElementById("currentDate").textContent = `${dayName}, ${date}`;
</script>
</body>
</html>
