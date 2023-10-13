@extends('layouts.layout')

@section('title', trans('lang.documents_title'))

@section('content')
<hr>
<div class="row mt-3"> <div class="col-12"> <div class="card transparent-background"> <div class="card-header
    transparent-background"> <div class="float-start"> <h4>@lang('lang.documents_title')</h4>
    </div> <div class="float-end"> <a href="{{ route('document.create') }}" class="btn btn-dark ml-auto">
        @lang('lang.btn_add') </a>
</div>
</div>
<div class="card-body transparent-background"> <table class="table table-bordered"> <thead>
    <tr> <th>@lang('lang.document_item_title')</th> <th>@lang('lang.document_item_dateadded')</th>
        <th>@lang('lang.document_item_uploader')</th>
        <th>@lang('lang.document_item_actions')</th>
        </tr>
        </thead>
        <tbody> @foreach($documents as $document) <tr>
        <td>{{ app()->getLocale() == 'fr' ? $document->title_fr : $document->title_en }}
            </td>
            <td>{{ $document->created_at->format('d-m-Y') }}</td>
        <td>{{ $document->user->name }}</td>
        <td>
        <a href="{{ route('document.show', $document->id) }}" class="btn btn-info btn-sm">
        @lang('lang.view') </a>
        <a href="{{ route('documents.download', $document->id) }}" class="btn btn-secondary btn-sm">
        @lang('lang.download') </a>
        @if(auth()->id() === $document->user_id)
        <a href="{{ route('document.edit', $document->id) }}" class="btn btn-primary btn-sm">
        @lang('lang.edit') </a>
        @endif
        </td>
        </tr>
        @endforeach
        </tbody>
        </table>
</div>
</div> </div> </div> @endsection