@extends('layouts.layout')
@section('title', 'Modifier un document')
@section('content')

<div class="row"> <div class="col-12 text-center pt-2"> <h1 class="display-one">
    @lang('lang.documentedit_title') <!-- Ensure to add the corresponding key in your language files -->
    </h1>
</div> <!--/col-12--> </div><!--/row-->

<hr>

<div class="row justify-content-center"> <div class="col-md-6"> <div class="card"> <!-- Ensure to route to the update
    method, and remember to pass the document id in the action attribute -->
    <form method='post'  enctype="multipart/form-data">
    @csrf
    @method('PUT') <!-- Specifying the HTTP method to be used -->

    <div class="card-header">
    Formulaires
    </div>

    <div class="card-body">
        <div class="control-group col-12">
        <label for="title_fr">Titre en français</label>
        <input type="text" id="title_fr" name="title_fr" class="form-control" value="{{ $document->title_fr }}">
    </div>

    <div class="control-group col-12">
        <label for="title_en">Titre en anglais</label>
        <input type="text" id="title_en" name="title_en" class="form-control" value="{{ $document->title_en }}">
    </div>

    <div class="control-group col-12">
        <label for="document">Document</label>
        <input type="file" id="document" name="document" class="form-control" accept=".pdf,.zip,.doc">
    </div>
</div>

<div class="card-footer">
    <input type="submit" class="btn btn-success" value="@lang('lang.update')">
</div>
</form>
</div>
</div>
</div>
@endsection