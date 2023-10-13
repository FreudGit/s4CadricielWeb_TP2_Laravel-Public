@extends('layouts.layout')
@section('title', 'Modifier un document')
@section('content')

<div class="row"> <div class="col-12 text-center pt-2">
    <h1 class="display-one">
    <blade
    lang|(%26%2339%3Blang.documentedit_title%26%2339%3B)%20%3C!--%20Ensure%20to%20add%20the%20corresponding%20key%20in%20your%20language%20files%20--%3E>
    </h1>
    </div>
    <!--/col-12-->
    </div> <!--/row-->

    <hr>

    <div class="row justify-content-center">
        <div class="col-md-6"> <div class="card"> <!-- Ensure to route to the update method, and remember to pass the
            document id in the action attribute -->
            <form method="post">
            @method('PUT')
            @csrf
                
                <div class="card-header">
                    Formulaire
                </div>

                <div class="card-body">
                    <div class="control-group col-12">
                        <label for="title_fr">Titre en français</label>
                        <input type="text" id="title_fr" name="title_fr" class="form-control"
                            value="{{ $document->title_fr }}">
                    </div>

                    <div class="control-group col-12">
                        <label for="title_en">Titre en anglais</label>
                        <input type="text" id="title_en" name="title_en" class="form-control"
                            value="{{ $document->title_en }}">
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