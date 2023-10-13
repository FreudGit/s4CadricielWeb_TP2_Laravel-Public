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

<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <form method='post' >
                @csrf
                @method('PUT')

                <div class="card-header">
                    @lang('lang.documentedit_title'):
                </div>

                <div class="card-body">
                    <div class="control-group col-12">
                        <label for="title_fr">@lang('lang.document_item_titleinfrench')</label>
                        <input type="text" id="title_fr" name="title_fr" class="form-control"
                            value="{{ $document->title_fr }}">
                    </div>

                    <div class="control-group col-12">
                        <label for="title_en">@lang('lang.document_item_titleinenglish')</label>
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