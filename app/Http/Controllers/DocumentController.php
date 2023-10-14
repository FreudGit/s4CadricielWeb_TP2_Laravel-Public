<?php

namespace App\Http\Controllers;
use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Auth;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $documents = Document::documentSelect()->paginate(1);
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
            'document' => 'required|mimes:pdf,zip,doc',
        ]);

        // Upload du fichier
        $filePath = $request->document->store('documents');

        // Sauvegarde dans la base de données
        $document = new Document();
        $document->title_fr = $request->title_fr;
        $document->title_en = $request->title_en;
        $document->file_path = $filePath;
        $document->user_id = Auth::id();
        $document->save();

        return redirect()->route('document.index')->with('success', trans('lang.Documentuploadedsuccessfully'));
    }

    /**
     * Display the specified resource.
     */
    public function show(Document $document)
    {
        return view('document.show', ['document' => $document]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $document = Document::findOrFail($id);
        if (Auth::id() !== $document->user_id) {
            return redirect()->back()->with('error', 'Unauthorized access.');
        }
        return view('document.edit', ['document' => $document]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Document $document)
    {
        $request->validate([
            'title_fr' => 'required|string|max:255',
            'title_en' => 'required|string|max:255'
        ]);
        $document->update([
            'title_fr' => $request->title_fr,
            'title_en' => $request->title_en,
        ]);
        return redirect(route('document.show', $document->id))->withSuccess(trans('lang.Dataupdated'));
        ;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $document = Document::findOrFail($id);

        if (Auth::id() !== $document->user_id) {
            return redirect()->back()->with('error', trans('lang.Unauthorizedaccess'));
        }

        // Supprimer le fichier du stockage
        Storage::delete($document->file_path);

        // Supprimer l'entrée de la base de données
        $document->delete();

        return redirect(route('document.index'))->withSuccess(trans('lang.Datadeleted'));
    }

    public function download(Document $document)
    {
        // Ensure the user is authorized to download the file
        // You may define your own logic here.
        if (Auth::id() !== $document->user_id) {
            return redirect()->back()->with('error', trans('lang.Unauthorizedaccess'));
        }

        return response()->download(storage_path("app/{$document->file_path}"));
    }

}