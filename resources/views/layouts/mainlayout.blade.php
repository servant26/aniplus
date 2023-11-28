<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Aniplus.com</title>
    <link rel="icon" href="{{ asset('gambar/icon.png') }}" type="image/png">
    <link href="{{ asset('bt\css\bootstrap.min.css') }}" rel="stylesheet">
    <script src="{{ asset('bt\js\bootstrap.bundle.min.js') }}"></script>
    <style>
    .card-img-top {
        height: 300px; 
        object-fit: cover; 
    }
    .card {
        height: 100%;
        overflow: hidden;
        position: relative;
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: scale(1.05);
    }

    .card-img-top {
        object-fit: cover;
    }
    
    </style>
</head>
<body>

<!--Awal Navbar-->
<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
  <div class="container-fluid m-2">
    <a class="navbar-brand" href="">Aniplus</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item mx-3">
          <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="/">Home</a>
        </li>
        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle {{ request()->is('tv','movie') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Tipe
          </a>
          <ul class="dropdown-menu scrollable-menu">
            <li><a class="dropdown-item" href="/tv">Batch</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/movie">Movie</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle {{ request()->is('action','adventure','comedy','drama','fantasy','mystery','romance','scifi','sol','sports','supernatural') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Genre
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/action">Action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/adventure">Adventure</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/comedy">Comedy</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/drama">Drama</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/fantasy">Fantasy</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/mystery">Mystery</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/romance">Romance</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/scifi">Sci-Fi</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/sol">Slice of Life</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/sports">Sports</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/supernatural">Supernatural</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle {{ request()->is('a1pictures','bones','comixwavefilms','davidproduction','kyotoanimation','madhouse','mappa','productionig','studioghibli','ufotable','whitefox','witstudio') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Studio
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/a1pictures">A-1 Pictures</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/bones">Bones</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/comixwavefilms">CoMix Wave Films</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/davidproduction">David Production</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/kyotoanimation">Kyoto Animation</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/madhouse">Madhouse</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/mappa">Mappa</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/productionig">Production I.G</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studioghibli">Studio Ghibli</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/ufotable">Ufotable</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/whitefox">White Fox</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/witstudio">Wit Studio</a></li>
            </ul>
          </li>
      </ul>
      <form class="d-flex" role="search" action="/cari" method="get">
        <input class="form-control me-2" type="search" name="cari" placeholder="Cari anime..." aria-label="Cari materi..." required>
        <button class="btn btn-primary" type="submit">Cari</button>
      </form>
    </div>
  </div>
</nav>
<!--Akhir navbar-->

@yield('content')

<!--Awal Footer-->
<div class="container-fluid p-4 bg-dark">
    <h4 class="text-white">Follow Sosial Media Kami</h4>
    <div class="d-flex justify-content-start">
      <a href="https://www.facebook.com/otaku.art.35" target="_blank"><img src="{{ asset('gambar/facebook.png') }}" height="30px"></a>
      <a href="https://www.instagram.com/servant_arthur07/" target="_blank"><img src="{{ asset('gambar/instagram.png') }}" height="30px"></a>
      <a href="https://www.tiktok.com/@servant_arthur07" target="_blank"><img src="{{ asset('gambar/tiktok.png') }}" height="30px"></a>
      <a href="https://www.youtube.com/@alikhatami3910" target="_blank"><img src="{{ asset('gambar/youtube.png') }}" height="30px"></a>
      <a href="https://github.com/servant26" target="_blank"><img src="{{ asset('gambar/github.png') }}" height="30px"></a>
    </div>
  </div>
<!--Akhir Footer-->
</body>
</html>