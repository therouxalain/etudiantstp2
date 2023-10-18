<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Language;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    // Vers la page d'accueil du forum et ses articles
    public function index()
    {
        // $articles = Article::paginate(20);
        // $currentPageItems = $articles->items();
        // $pagination = $articles->appends($request->query());

        $articles = Article::with('language')->get();
        // $articles = Article::Paginate(12);
        $languages = Language::all();

        return view('forum.index', [
            'articles' => $articles,
            'languages' => $languages

            // 'items' => $currentPageItems,
            // 'pagination' => $pagination,
        ]);
    }

    // Insertion en bdd d'un nouvel article
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'body' => 'required',
            'language_id' => 'required'
        ]);

        // Pour l'id de l'utilisateur connecté 
        $id = Auth::user()->id;
        $request->all()['user_id'] = $id;

        $article = new Article;
        $article->fill($request->all());
        $article->save();

        return redirect()->route('forum');
    }

    // Mène à la page d'un article spécifique
    public function show(Article $article)
    {
        return view('forum.show', ['article' => $article]);
    }

    // Pour la page de modification d'un article
    public function edit(Article $article)
    {
        return view('forum.edit', ['article' => $article]);
    }

    // Infos modifiées de l'article dans la bdd
    public function update(Request $request, Article $article)
    {
        $request->validate([
            'title' => 'required',
            'body' => 'required'
        ]);

        $article->fill($request->all());
        $article->save();

        return back()->with('success', '');
    }

    // Supression un article de la bdd
    public function delete(Article $article)
    {
        $article->delete();

        return redirect()->route('forum');
    }
}
