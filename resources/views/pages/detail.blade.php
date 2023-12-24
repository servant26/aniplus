@extends('layouts.mainlayout')

@section('content')
<!-- Awal Card -->
<div class="container mt-5 mb-5" id="card-materi">
    @foreach($detail as $t)
    <div class="p-3 mb-4 rounded bg-dark text-white">{{ $t->judul }}</div>
    <div class="row g-4 m-4">
        @if($t->trailer)
            <iframe src="{{ str_replace('watch?v=', 'embed/', $t->trailer) }}" frameborder="0" height="500" allowfullscreen></iframe><br>
        @endif
        <div class="container col-12">
        <h5 class="mt-5">Deskripsi Anime :</h5>
        <table class="table" style="width: 80%">
            <tr>
                <td>Judul Anime</td>
                <td>{{ $t->judul }}</td>
            </tr>
            <tr>
                <td>Judul Alternatif</td>
                <td>{{ $t->judul_inggris }}</td>
            </tr>
            <tr>
                <td>Score</td>
                <td>{{ $t->score }}</td>
            </tr>
            <tr>
                <td>Jumlah Episode</td>
                <td>{{ $t->episode }}</td>
            </tr>
            <tr>
                <td>Tipe</td>
                <td>
                    @if($t->tipe === 'tv')
                        {{ strtoupper($t->tipe) }}
                    @elseif($t->tipe === 'movie')
                        {{ ucwords($t->tipe) }}
                    @else
                        {{ $t->tipe }}
                    @endif
                </td>
            </tr>
            <tr>
                <td>Tanggal Rilis</td>
                <td>
                    @php
                        $tanggal = $t->tgl_rilis;
                        $tgl_parts = explode('/', $tanggal);
                        $bulan = [
                            '01' => 'Januari',
                            '02' => 'Februari',
                            '03' => 'Maret',
                            '04' => 'April',
                            '05' => 'Mei',
                            '06' => 'Juni',
                            '07' => 'Juli',
                            '08' => 'Agustus',
                            '09' => 'September',
                            '10' => 'Oktober',
                            '11' => 'November',
                            '12' => 'Desember',
                        ];
                        if(count($tgl_parts) == 3 && isset($bulan[$tgl_parts[1]])){
                            $new_date = $tgl_parts[0] . ' ' . $bulan[$tgl_parts[1]] . ' ' . $tgl_parts[2];
                            echo $new_date;
                        } else {
                            echo $tanggal;
                        }
                    @endphp
                </td>
            </tr>
            <tr>
                <td>Musim</td>
                <td>{{ ucwords($t->season) }}</td>
            </tr>
            <tr>
                <td>Genre</td>
                <td>{{ str_replace(["[", "]", "'"], "", $t->genre) }}</td>
            </tr>
            <tr>
                <td>Studio</td>
                <td>{{ str_replace(["[", "]", "'"], "", $t->studio) }}</td>
            </tr>
        </table><br><br>
        <h5>Sinopsis Anime :</h5> 
        <p style="text-align: justify">Anime yang berjudul <b>{{ $t->judul }}</b>, ini merupakan sebuah anime yang telah
            diproduksi oleh studio <b>{{ str_replace(["[", "]", "'"], "", $t->studio) }}</b>, dengan genre utamanya
            adalah <b>{{ str_replace(["[", "]", "'"], "", $t->genre) }}</b>. Anime ini menghadirkan kisah yang 
            mengagumkan melalui total <b>{{ $t->episode }}</b> episode yang tayang, dan berhasil mencuri perhatian 
            penonton dengan rating yang mencapai <b>{{ $t->score }}</b>. Tepat pada tanggal 
            @php
                $tanggal = $t->tgl_rilis;
                $tgl_parts = explode('/', $tanggal);
                $bulan = [
                    '01' => 'Januari',
                    '02' => 'Februari',
                    '03' => 'Maret',
                    '04' => 'April',
                    '05' => 'Mei',
                    '06' => 'Juni',
                    '07' => 'Juli',
                    '08' => 'Agustus',
                    '09' => 'September',
                    '10' => 'Oktober',
                    '11' => 'November',
                    '12' => 'Desember',
                ];
                if(count($tgl_parts) == 3 && isset($bulan[$tgl_parts[1]])){
                    $new_date = $tgl_parts[0] . ' ' . $bulan[$tgl_parts[1]] . ' ' . $tgl_parts[2];
                }
            @endphp
            @if(isset($new_date))
                <b>{{ $new_date }}</b>
            @else
                {{ $tanggal }}
            @endif        
            anime ini pertama kali dirilis untuk disaksikan oleh para penggemarnya. Dengan jalan cerita yang mendebarkan,
            aksi yang seru, dan sentuhan dramatis yang memukau, <b>{{ $t->judul }}</b> telah menjadi salah satu anime
            paling populer dan diakui dalam industri hiburan Jepang maupun di seluruh dunia. Kehadirannya telah
            menginspirasi banyak orang dan menciptakan ikon-ikon tak terlupakan, menjadikannya sebagai salah satu karya
            paling berpengaruh dalam sejarah dunia animasi.</p><br>
            <h5>Link Download :</h5>
            @php
                $links = explode(', ', $t->link);
            @endphp
            
            @foreach($links as $index => $link)
                @php
                    $part = $index + 1;
                @endphp
                <a class="btn btn-outline-primary btn-sm" href="{{ $link }}" role="button">Part {{ $part }} - 720 Google Drive</a>
            @endforeach
        </div>
    @endforeach
    </div>
</div>
<!-- Akhir Card -->
@endsection
