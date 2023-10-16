@extends('layouts.layout')
@section('title', trans('lang.documentedit_title'))
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <h1 class="display-one"> @lang('lang.documentedit_title')
        </h1>
    </div>
</div>
<hr>
<div>
    <a href="{{ route('document.index') }}"
        class="btn btn-outline-primary btn-sm btn-dark">@lang('lang.back') </a>
    <div class="float-end">
        <form method="post">
            @method('DELETE')
            @csrf
            <input type="submit" class="btn btn-danger btn-sm " value="@lang('lang.Delete')">
        </form>
    </div>
</div>
<div class="row justify-content-center">
    <div class="col-md-6">
        <div>

        </div>

        <div class="card">
            <form method="post">
                @csrf
                @method('PUT')

                <div class="card-header">
                    @lang('lang.documentedit_title'):


                        <div class="card-body">
                            <div class="control-group col-12">
                                <label for="title_fr">@lang('lang.document_item_titleinfrench')</label>
                                <input type="text" id="title_fr" name="title_fr" class="form-control"
                                    value="{{ $document->title_fr }}" required>
                            </div>

                            <div class="control-group col-12">
                                <label for="title_en">@lang('lang.document_item_titleinenglish')</label>
                                <input type="text" id="title_en" name="title_en" class="form-control"
                                    value="{{ $document->title_en }}" required>
                            </div>

                           
                        </div>

                        <div class="card-footer d-flex justify-content-between align-items-center">
                            <div>
                                <input type="submit" class="btn btn-success btn-sm" value="@lang('lang.update')">
                            </div>
                        </div>
            </form>

            <!-- Formulaire de suppression -->

        </div>
    </div>
</div>
@endsection
