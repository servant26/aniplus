@extends('layouts.adminlayout')

@section('content')
<div class="container">
    <div class="mx-4">
    <br>
    <h3>Add Anime</h3><br>
    <form action="{{ route('anime.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label>Anime Name</label>
            <input type="text" name="judul" class="form-control" required autofocus placeholder="Enter anime name">
        </div>
        <div class="form-group">
            <label>Alternative Title</label>
            <input type="text" name="judul_inggris" class="form-control" required placeholder="Enter alternative title">
        </div>
        <div class="form-group">
            <label>Type</label>
            <select name="tipe" class="form-control" required>
                <option value="" disabled selected>Select Type</option>
                @foreach($types as $type)
                    <option value="{{ $type }}">{{ ucwords(str_replace(["[", "]", "'"], "", $type)) }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Score</label>
            <input type="number" step="0.01" name="score" class="form-control" required placeholder="Enter score (e.g. 8.52)">
        </div>
        <div class="form-group">
            <label>Episode</label>
            <input type="number" name="episode" class="form-control" required placeholder="Enter number of episodes">
        </div>
        <div class="form-group">
            <label>Release Date</label>
            <input type="date" name="tgl_rilis" class="form-control" required placeholder="Select release date">
        </div>
        <div class="form-group">
            <label>Season</label>
            <select name="season" class="form-control" required>
                <option value="" disabled selected>Select Season</option>
                @foreach($seasons as $season)
                    <option value="{{ $season }}">{{ ucwords(str_replace(["[", "]", "'"], "", $season)) }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Genre</label>
            <input type="text" name="genre" class="form-control" required placeholder="Enter genre (e.g. Action, Adventure)">
        </div>
        <div class="form-group">
            <label>Studio</label>
            <select name="studio" class="form-control" required>
                <option value="" disabled selected>Select Studio</option>
                <option value="A-1 Pictures">A-1 Pictures</option>
                <option value="Bones">Bones</option>
                <option value="CoMix Wave Films">CoMix Wave Films</option>
                <option value="David Production">David Production</option>
                <option value="Kyoto Animation">Kyoto Animation</option>
                <option value="Madhouse">Madhouse</option>
                <option value="Mappa">Mappa</option>
                <option value="Production I.G">Production I.G</option>
                <option value="Studio Ghibli">Studio Ghibli</option>
                <option value="Ufotable">Ufotable</option>
                <option value="White Fox">White Fox</option>
                <option value="Wit Studio">Wit Studio</option>
                <option value="Other">Other</option> <!-- Menambahkan "Other" -->
            </select>
        </div>
        <div class="form-group">
            <label>Image</label>
            <input type="url" name="gambar" class="form-control" required placeholder="Enter image URL">
        </div>
        <div class="form-group">
            <label>Trailer</label>
            <input type="url" name="trailer" class="form-control" required placeholder="Enter trailer URL">
        </div>
        <div class="form-group">
            <label>Link</label>
            <input type="url" name="link" class="form-control" required placeholder="Enter official link">
        </div>
        <a class="btn btn-danger" href="/list_anime" role="button">Back</a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <br><br>
    </div>
</div>
@endsection
