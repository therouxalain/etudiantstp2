<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'path',
        'language_id',
        'user_id'
    ];

    // Connection de l'info de la table  langues à la table fichiers
    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}
