@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
    <div class="p-3 mb-4 rounded bg-dark text-white">David Production</div>
    <div class="row g-4">
        @foreach($davidproduction as $t)
            <div class="col-lg-3 col-md-4 col-6">
            <a href="/detail/{{ $t->id }}" style="text-decoration: none">
            <div class="card">
                <img src="{{ $t->gambar }}" class="card-img-top" alt="{{ $t->judul }}">
                <div class="card-body">
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
        @if ($davidproduction->onFirstPage())
            <li class="page-item disabled"><span class="page-link">Previous</span></li>
        @else
            <li class="page-item"><a class="page-link" href="{{ $davidproduction->previousPageUrl() }}">Previous</a></li>
        @endif
        
        @for ($i = max(1, $davidproduction->currentPage() - 1); $i <= min($davidproduction->lastPage(), $davidproduction->currentPage() + 1); $i++)
            <li class="page-item {{ $i == $davidproduction->currentPage() ? 'active' : '' }}">
                <a class="page-link" href="{{ $davidproduction->url($i) }}">{{ $i }}</a>
            </li>
        @endfor
            
        @if ($davidproduction->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $davidproduction->nextPageUrl() }}">Next</a></li>
        @else
            <li class="page-item disabled"><span class="page-link">Next</span></li>
        @endif
    </ul>
</div>
<!-- Akhir Pagination -->
@endsection
