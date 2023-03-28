<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class kampus extends Model
{
    use HasFactory;

    public $table = 'kampus';
    public $primarykey = 'id';
    protected $fillable = [
        'nama',
        'alamat',
        'bio',
        'hari',
        'jam_buka',
        'jam_tutup',
        'tiket',
        'banner',
        'foto1',
        'foto2',
        'foto3',
    ];
}
