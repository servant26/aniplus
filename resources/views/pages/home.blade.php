@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
<!-- batch -->
<div class="p-3 mb-4 rounded bg-dark text-white"><a class="btn btn-outline-light" href="/type/tv" role="button">Batch</a>
</div>
<div class="row g-4">
    @foreach($type1 as $pw)
    <div class="col-lg-3 col-md-4 col-6">
        <a href="/detail/{{ $pw->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $pw->gambar }}" class="card-img-top" alt="{{ $pw->judul }}">
                <div class="card-body">
                    <h6 class="card-title">{{ $pw->judul }}</h6>
                </div>
            </div>
        </a>
    </div>
    @endforeach
</div>

<!-- Movie -->
<div class="p-3 mb-4 mt-5 rounded bg-dark text-white"><a class="btn btn-outline-light" href="/type/movie" role="button">Movie</a>
</div>
<div class="row g-4">
    @foreach($type2 as $pw)
    <div class="col-lg-3 col-md-4 col-6">
        <a href="/detail/{{ $pw->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $pw->gambar }}" class="card-img-top" alt="{{ $pw->judul }}">
                <div class="card-body">
                    <h6 class="card-title">{{ $pw->judul }}</h6>
                </div>
            </div>
        </a>
    </div>
    @endforeach
</div>
</div>
@endsection
