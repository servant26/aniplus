@extends('layouts.mainlayout')

@section('content')
<div class="rampung">
  <div class="container mt-5">
    <h1>Request Anime</h1>
    <p>Silakan kirimkan permintaan anime yang ingin ditonton.</p>

    <!-- Tampilkan alert jika ada pesan error atau sukses -->
    @if(session('error'))
      <div class="alert alert-danger">
        {{ session('error') }}
      </div>
    @endif
    @if(session('success'))
      <div class="alert alert-success">
        {{ session('success') }}
      </div>
    @endif

    <form id="requestForm" action="/req/store" method="post" onsubmit="return handleFormSubmit(event)">
      @csrf
      <div class="mb-3">
        <label for="animeName" class="form-label">Nama Anime</label>
        <input type="text" class="form-control" id="animeName" name="animeName" placeholder="Masukkan judul anime yang ingin kamu request ke admin" required autofocus>
      </div>

      <div class="mb-3">
        <label for="animeDescription" class="form-label">Deskripsi Anime</label>
        <textarea class="form-control" id="animeDescription" name="animeDescription" rows="3" placeholder="Ceritakan secara singkat, seperti apa alur cerita dari anime yang kamu request ini" required></textarea>
      </div>

      <button type="submit" class="btn btn-primary">Kirim Permintaan</button>
    </form>
  </div>
</div>
@endsection
