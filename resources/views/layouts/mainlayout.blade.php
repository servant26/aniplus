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
    html, body {
      height: 100%;
      margin: 0;
    }

    .container-fluid.p-4.bg-dark {
      margin-top: auto; /* Menambahkan margin atas otomatis untuk footer */
    }

    body {
      display: flex;
      flex-direction: column;
      justify-content: space-between; /* Menyebarkan konten secara vertikal */
    }
    .card-img-top {
        height: 300px; 
        object-fit: cover; 
    }
    .card {
        height: 100%;
        overflow: hidden;
        position: relative;
        transition: transform 0.3s ease;
        margin-left: 4%; /* Memberikan margin di sebelah kiri */
        margin-right: 4%; /* Memberikan margin di sebelah kanan */
    }

    .card:hover {
        transform: scale(1.05);
    }

    .card-img-top {
        object-fit: cover;
    }
    .card-body {
        position: relative;
        padding: 0;
    }
    .card-body h6 {
        position: absolute;
        bottom: 30px; /* Menyesuaikan posisi teks sedikit lebih tinggi */
        left: 0;
        width: 100%;
        padding: 10px;
        background-color: white;
        color: transparent;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        transition: color 0.3s ease, opacity 0.5s ease, transform 0.3s ease;
        opacity: 0;
        transform: rotate(-1deg); /* Memberikan rotasi sedikit untuk efek miring */
        transform-origin: center; /* Memastikan rotasi terjadi di tengah */
    }

    .card:hover .card-body h6 {
        color: black; /* Teks menjadi hitam ketika di-hover */
        opacity: 1; /* Teks muncul dengan transisi */
    }

    @media (max-width: 768px) {
        .card {
            height: 200px; /* Mengurangi tinggi card pada perangkat dengan layar kecil */
        }

        .card-body h6 {
            font-size: 14px; /* Menurunkan ukuran font judul pada mobile */
            padding: 8px; /* Mengurangi padding di card-body */
        }
        .rampung{
          margin-left: 5%;
          margin-right: 5%;
        }
    }
    /* Wrapper video responsif */
    .video-wrapper {
        position: relative;
        padding-top: 56.25%; /* Rasio 16:9 = 9 / 16 = 0.5625 = 56.25% */
        height: 0;
        overflow: hidden;
        max-width: 100%;
        background: #000;
    }

    .video-wrapper iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    /* Untuk perangkat dengan layar lebih kecil (misalnya mobile) */
    @media (max-width: 768px) {
        .video-wrapper {
            padding-top: 66.25%; /* Tetap pertahankan rasio 16:9 */
        }
    }
    </style>
</head>
<body>

<!--Awal Navbar-->
<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
  <div class="container-fluid m-2">
    <a class="navbar-brand" href="javascript:void(0);" ondblclick="window.location.href='http://aniplus.infinityfreeapp.com/anime_list';">Aniplus</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item mx-3">
          <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="/">Home</a>
        </li>
        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle {{ request()->is('type/tv','type/movie') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Tipe
          </a>
          <ul class="dropdown-menu scrollable-menu">
            <li><a class="dropdown-item" href="/type/tv">Batch</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/type/movie">Movie</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle {{ request()->is('genre/action','genre/adventure','genre/comedy','genre/drama','genre/fantasy','genre/mystery','genre/romance','genre/scifi','genre/sol','genre/sports','genre/supernatural') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Genre
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/genre/action">Action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/adventure">Adventure</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/comedy">Comedy</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/drama">Drama</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/fantasy">Fantasy</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/mystery">Mystery</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/romance">Romance</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/scifi">Sci-Fi</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/sol">Slice of Life</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/sports">Sports</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/genre/supernatural">Supernatural</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle {{ request()->is('studio/a1pictures','studio/bones','studio/comixwavefilms','studio/davidproduction','studio/kyotoanimation','studio/madhouse','studio/mappa','studio/productionig','studio/studioghibli','studio/ufotable','studio/whitefox','studio/witstudio') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Studio
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/studio/a1pictures">A-1 Pictures</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/bones">Bones</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/comixwavefilms">CoMix Wave Films</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/davidproduction">David Production</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/kyotoanimation">Kyoto Animation</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/madhouse">Madhouse</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/mappa">Mappa</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/productionig">Production I.G</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/studioghibli">Studio Ghibli</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/ufotable">Ufotable</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/whitefox">White Fox</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/studio/witstudio">Wit Studio</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown mx-3">
            <a class="nav-link dropdown-toggle {{ request()->is('tahun/23','tahun/20','tahun/15','tahun/10','tahun/04','tahun/90') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Tahun
            </a>
            <ul class="dropdown-menu scrollable-menu">
              <li><a class="dropdown-item" href="/tahun/23">2021-2023</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/tahun/20">2016-2020</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/tahun/15">2011-2015</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/tahun/10">2006-2010</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/tahun/04">2000-2005</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="/tahun/90">90-an kebawah</a></li>
            </ul>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link {{ request()->is('req') ? 'active' : '' }}" href="/req">Req Anime</a>
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
@yield('js')
</html>