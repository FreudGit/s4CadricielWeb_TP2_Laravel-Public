<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Illuminate\Http\Request;
use Auth;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //$documents = Document::all();

          $documents = [
        (object) [
                'id' => 1,
                'user_id' => 1,

                'title_fr' => 'Document en français 1',
            'title_en' => 'Document in English 1',
            'created_at' => now()->subDays(1),
            'user' => (object) ['name' => 'User 1']
        ],
        (object) [
                'id' => 2,
                'user_id' => 2,

                'title_fr' => 'Document en français 2',
            'title_en' => 'Document in English 2',
            'created_at' => now()->subDays(2),
            'user' => (object) ['name' => 'User 2']
        ],
        // ... vous pouvez ajouter plus de documents fictifs ici si nécessaire
    ];

  


        return view('document.index', ['documents' => $documents]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('document.create');

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title_fr' => 'required|string|max:255',
            'title_en' => 'required|string|max:255',
            'document' => 'required|mimes:pdf,zip,doc|max:2048',
            // Limite à 2MB pour l'exemple
        ]);

        // Upload du fichier
        $filePath = $request->document->store('documents');

        // Sauvegarde dans la base de données
        $document = new Document();
        $document->title_fr = $request->title_fr;
        $document->title_en = $request->title_en;
        $document->file_path = $filePath;
        $document->user_id = Auth::id(); 
        //$document->save();

       // return redirect()->route('some.route.name')->with('success', 'Document uploaded successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Document $dowcument)
    {
        //return $document;
        $document= (object) [
            'id' => 1,
            'user_id' => 1,

            'title_fr' => 'Document en français 1',
            'title_en' => 'Document in English 1',
            'created_at' => now()->subDays(1),
            'user' => (object) ['name' => 'User 1']
        ];
        return view('document.show', ['document' => $document]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $document = Document::findOrFail($id);

        // Vérifier que l'utilisateur actuellement connecté est le propriétaire du document
        if (Auth::id() !== $document->user_id) {
            return redirect()->back()->with('error', 'Unauthorized access.');
        }

        return view('path.to.your.edit.blade.file', ['document' => $document]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Document $document)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $document = Document::findOrFail($id);

        if (Auth::id() !== $document->user_id) {
            return redirect()->back()->with('error', 'Unauthorized access.');
        }

        // Supprimer le fichier du stockage
        Storage::delete($document->file_path);

        // Supprimer l'entrée de la base de données
        $document->delete();

        return redirect()->back()->with('success', 'Document deleted successfully.');
    }

    public function download(Document $document)
    {
        // Ensure the user is authorized to download the file
        // You may define your own logic here.
        if (Auth::id() !== $document->user_id) {
            return redirect()->back()->with('error', 'Unauthorized access.');
        }

        return response()->download(storage_path("app/{$document->file_path}"));
    }

}
