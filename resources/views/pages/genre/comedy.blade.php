@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
    <div class="p-3 mb-4 rounded bg-dark text-white">Comedy</div>
    <div class="row g-4">
        @foreach($comedy as $t)
            <div class="col-lg-3 col-md-4 col-6">
            <a href="/detail/{{ $t->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $t->gambar }}" class="card-img-top" alt="Gambar">
                <div class="card-body p-3">
                    <h6 class="card-title">{{ $t->judul }}</h6>
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
        @if ($comedy->onFirstPage())
            <li class="page-item disabled"><span class="page-link">Previous</span></li>
        @else
            <li class="page-item"><a class="page-link" href="{{ $comedy->previousPageUrl() }}">Previous</a></li>
        @endif
        
        @for ($i = max(1, $comedy->currentPage() - 1); $i <= min($comedy->lastPage(), $comedy->currentPage() + 1); $i++)
            <li class="page-item {{ $i == $comedy->currentPage() ? 'active' : '' }}">
                <a class="page-link" href="{{ $comedy->url($i) }}">{{ $i }}</a>
            </li>
        @endfor
            
        @if ($comedy->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $comedy->nextPageUrl() }}">Next</a></li>
        @else
            <li class="page-item disabled"><span class="page-link">Next</span></li>
        @endif
    </ul>
</div>
<!-- Akhir Pagination -->
@endsection
