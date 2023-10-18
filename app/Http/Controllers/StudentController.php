<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\City;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    // Redirection vers la Une présentant les élèves
    // C'est un choix car j'aurais aussi pu faire une Une distincte
    //Le bottin est la fonction première du site

    public function index()
    {
        $students = Student::all();

        return view('student.index', ['students' => $students]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    // Redirection vers la page de création d'un élève
    public function create()
    {
        $cities = City::all();

        return view('student.create', ['cities' => $cities]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    // Insertion en bdd du nouvel élève et son compte connecté
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'address' => 'required',
            'password' => 'required'
        ]);

     
        $student = Student::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'city_id' => $request->city_id,
            'password' => Hash::make($request->password),
            'user_id' => $request->user_id
        ]);


        //On voit l carte de cet élève après la création
        return redirect(route('student.show', $student->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */

    // Redirection les infos d'un élève spécifique
    public function show(Student $student)
    {
        $city = City::find($student->city_id);
        $student->city = $city->name;

        return view('student.show', ['student' => $student]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */

    // Reirection vers la page de modification des infos d'un élève spécifique
    public function edit(Student $student)
    {
        $cities = City::all();
        return view('student.edit', [
            'student' => $student,
            'cities' => $cities
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */

    // Mise à jour des infos d'un élève précis dans la bdd
    public function update(Request $request, Student $student)
    {
        //
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'city_id' => 'required'
        ]);

        $lastupdated = date('Y-m-d H:i:s');
        $lastupdated = date('Y-m-d H:i:s', strtotime($lastupdated));

        $student->update([
            'name' => $request->name,
            'email'  => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'city_id' => $request->city_id,
            'updated_at' => $lastupdated
        ]);

        return redirect(route('student.edit', $student->id))->with('success', '');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */

    // Suppression d'un élève précis dans la bdd
    public function destroy(Student $student)
    {
        $student->delete();
        
        return redirect(route('student.index'));
    }
}
