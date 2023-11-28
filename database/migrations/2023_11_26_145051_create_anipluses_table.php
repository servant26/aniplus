<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aniplus', function (Blueprint $table) {
            $table->id();   
            $table->string('judul');
            $table->string('tipe');
            $table->float('score');
            $table->integer('episode');
            $table->string('tgl_rilis');
            $table->string('season');
            $table->string('genre');
            $table->string('studio');
            $table->string('gambar');
            $table->string('trailer');
            $table->string('judul_inggris');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('aniplus');
    }
};
