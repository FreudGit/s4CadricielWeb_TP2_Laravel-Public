@extends('layouts.layout')
@section('title', trans('lang.documentshow_title'))
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <h1 class="display-one">@lang('lang.documentshow_title')</h1>
    </div>
</div>

<hr>

<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <form enctype="multipart/form-data">
                @csrf

                <div class="card-header">
                    @lang('lang.documentshow_title'):
                </div>

                <div class="card-body">
                    <div class="control-group col-12">
                        <label for="title_fr">@lang('lang.document_item_titleinfrench'):</label>
                        <input type="text" id="title_fr" name="title_fr" class="form-control"
                            value="{{ $document->title_fr }}" readonly>
                    </div>

                    <div class="control-group col-12">
                        <label for="title_en">@lang('lang.document_item_titleinenglish')</label>
                        <input type="text" id="title_en" name="title_en" class="form-control"
                            value="{{ $document->title_en }}" readonly>
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-end">
                    <div>
                        <a href="{{ route('document.index') }}"
                            class="btn btn-outline-primary btn-sm">OK</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
