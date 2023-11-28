@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
    <div class="p-3 mb-4 rounded bg-dark text-white">Movie</div>
    <div class="row g-4">
        @foreach($movie as $m)
            <div class="col-lg-3 col-md-4 col-6">
            <a href="/isi/{{ $m->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $m->gambar }}" class="card-img-top" alt="Gambar">
                <div class="card-body p-3">
                    <h6 class="card-title">{{ $m->judul }}</h6>
                </div>
            </div>
            </a>
            </div>
        @endforeach
    </div>
</div>
<!-- Akhir Card -->
<!-- Awal Pagination --> 
<div class="d-flex justify-content-center mb-5">
    <ul class="pagination">
        @if ($movie->onFirstPage())
            <li class="page-item disabled"><span class="page-link">Previous</span></li>
        @else
            <li class="page-item"><a class="page-link" href="{{ $movie->previousPageUrl() }}">Previous</a></li>
        @endif
        
        @for ($i = max(1, $movie->currentPage() - 1); $i <= min($movie->lastPage(), $movie->currentPage() + 1); $i++)
            <li class="page-item {{ $i == $movie->currentPage() ? 'active' : '' }}">
                <a class="page-link" href="{{ $movie->url($i) }}">{{ $i }}</a>
            </li>
        @endfor
            
        @if ($movie->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $movie->nextPageUrl() }}">Next</a></li>
        @else
            <li class="page-item disabled"><span class="page-link">Next</span></li>
        @endif
    </ul>
</div>
<!-- Akhir Pagination -->
@endsection
