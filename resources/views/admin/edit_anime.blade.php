@extends('layouts.adminlayout')

@section('content')
<div class="container">
    <div class="mx-4">
        <br>
        <h3>Edit Anime</h3>
        <br>
        <form action="{{ route('anime.update', $anime->id) }}" method="POST">
            @csrf
            <div class="form-group">
                <label>Anime Name</label>
                <input type="text" name="judul" class="form-control" value="{{ $anime->judul }}" required>
            </div>
            <div class="form-group">
                <label>Alternative Title</label>
                <input type="text" name="judul_inggris" class="form-control" value="{{ $anime->judul_inggris }}">
            </div>
            <div class="form-group">
                <label>Type</label>
                <select name="tipe" class="form-control" required>
                    <option value="" disabled>Select Type</option>
                    @foreach($types as $type)
                        <option value="{{ $type }}" {{ $anime->tipe == $type ? 'selected' : '' }}>
                            {{ ucwords(str_replace(["[", "]", "'"], "", $type)) }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>Score</label>
                <input type="number" step="0.01" name="score" class="form-control" value="{{ $anime->score }}">
            </div>
            <div class="form-group">
                <label>Episode</label>
                <input type="number" name="episode" class="form-control" value="{{ $anime->episode }}">
            </div>
            <div class="form-group">
                <label>Release Date</label>
                <input type="text" name="tgl_rilis" class="form-control" value="{{ $anime->tgl_rilis }}">
            </div>
            <div class="form-group">
                <label>Season</label>
                <select name="season" class="form-control">
                    <option value="" disabled>Select Season</option>
                    @foreach($seasons as $season)
                        <option value="{{ $season }}" {{ $anime->season == $season ? 'selected' : '' }}>
                            {{ ucwords(str_replace(["[", "]", "'"], "", $season)) }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>Genre</label>
                <input type="text" name="genre" class="form-control" value="{{ ucwords(str_replace(["[", "]", "'"], "", $anime->genre)) }}">
            </div>
            <div class="form-group">
                <label>Studio</label>
                <select name="studio" class="form-control">
                    <option value="" disabled>Select Studio</option>
                    @foreach($studios as $studio)
                        <option value="{{ $studio }}" {{ $anime->studio == $studio ? 'selected' : '' }}>
                            {{ ucwords(str_replace(["[", "]", "'"], "", $studio)) }}
                        </option>
                    @endforeach
                    <option value="Other" {{ $anime->studio == 'Other' ? 'selected' : '' }}>Other</option>
                </select>
            </div>
            <div class="form-group">
                <label>Image</label>
                <input type="url" name="gambar" class="form-control" value="{{ $anime->gambar }}">
            </div>
            <div class="form-group">
                <label>Trailer</label>
                <input type="url" name="trailer" class="form-control" value="{{ $anime->trailer }}">
            </div>
            <div class="form-group">
                <label>Link</label>
                <input type="url" name="link" class="form-control" value="{{ $anime->link }}">
            </div>
            <a class="btn btn-danger" href="/list_anime" role="button">Back</a>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
        <br><br>
    </div>
</div>
@endsection
