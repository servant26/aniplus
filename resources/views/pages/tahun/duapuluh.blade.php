@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
    <div class="p-3 mb-4 rounded bg-dark text-white">2016-2020</div>
    <div class="row g-4">
        @foreach($duapuluh as $m)
            <div class="col-lg-3 col-md-4 col-6">
            <a href="/detail/{{ $m->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $m->gambar }}" class="card-img-top" alt="{{ $m->judul }}">
                <div class="card-body">
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
        @if ($duapuluh->onFirstPage())
            <li class="page-item disabled"><span class="page-link">Previous</span></li>
        @else
            <li class="page-item"><a class="page-link" href="{{ $duapuluh->previousPageUrl() }}">Previous</a></li>
        @endif
        
        @for ($i = max(1, $duapuluh->currentPage() - 1); $i <= min($duapuluh->lastPage(), $duapuluh->currentPage() + 1); $i++)
            <li class="page-item {{ $i == $duapuluh->currentPage() ? 'active' : '' }}">
                <a class="page-link" href="{{ $duapuluh->url($i) }}">{{ $i }}</a>
            </li>
        @endfor
            
        @if ($duapuluh->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $duapuluh->nextPageUrl() }}">Next</a></li>
        @else
            <li class="page-item disabled"><span class="page-link">Next</span></li>
        @endif
    </ul>
</div>
<!-- Akhir Pagination -->
@endsection
