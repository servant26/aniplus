@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
    <div class="p-3 mb-4 rounded bg-dark text-white">2006-2010</div>
    <div class="row g-4">
        @foreach($sepuluh as $m)
            <div class="col-lg-3 col-md-4 col-6">
            <a href="/detail/{{ $m->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $m->gambar }}" class="card-img-top" alt="{{ $m->judul }}">
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
        @if ($sepuluh->onFirstPage())
            <li class="page-item disabled"><span class="page-link">Previous</span></li>
        @else
            <li class="page-item"><a class="page-link" href="{{ $sepuluh->previousPageUrl() }}">Previous</a></li>
        @endif
        
        @for ($i = max(1, $sepuluh->currentPage() - 1); $i <= min($sepuluh->lastPage(), $sepuluh->currentPage() + 1); $i++)
            <li class="page-item {{ $i == $sepuluh->currentPage() ? 'active' : '' }}">
                <a class="page-link" href="{{ $sepuluh->url($i) }}">{{ $i }}</a>
            </li>
        @endfor
            
        @if ($sepuluh->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $sepuluh->nextPageUrl() }}">Next</a></li>
        @else
            <li class="page-item disabled"><span class="page-link">Next</span></li>
        @endif
    </ul>
</div>
<!-- Akhir Pagination -->
@endsection
