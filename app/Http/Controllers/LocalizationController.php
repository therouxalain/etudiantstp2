<?php

namespace App\Http\Controllers;

use App;
use Illuminate\Http\RedirectResponse;

class LocalizationController extends Controller
{
    /**
     * @param $locale
     * @return RedirectResponse
     */

    // Pour changer la langue du site selon la sélection de l'utilisateur
    // Je ne comprends pas le soulignement rouge de Vscode pour la signature :
    //"Méthode non compatible"

    public function index($locale)
    {
        App::setLocale($locale);
        session()->put('locale', $locale);

        return redirect()->back();
    }
}
