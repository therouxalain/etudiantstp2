<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'body',
        'user_id',
        'language_id'
    ];

    // Connection de l'info de la table langues à la table articles
    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}
