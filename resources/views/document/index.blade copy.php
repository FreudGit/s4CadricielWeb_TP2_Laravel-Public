@extends('layouts.layout')
@section('title', trans('lang.documents_title'))
@section('content')
<hr>
<div class="row">
<div class="col-12 pt-2">
    <table class="table table-bordered">
    <thead>
    <tr>
        <th>@lang('lang.title')</th>
        <th>@lang('lang.date_added')</th>
        <th>@lang('lang.uploader')</th>
        <th>@lang('lang.actions')</th>
        </tr>
        </thead>
        <tbody>
        @foreach($documents as $document)
    <tr>
        <td>{{ app()->getLocale() == 'fr' ? $document->title_fr : $document->title_en }}</td>
        <td>{{ $document->created_at->format('d-m-Y') }}</td>
        <td>{{ $document->user->name }}</td>
        <td>
        <a href="{{ route('document.show', $document->id) }}" class="btn btn-info btn-sm">@lang('lang.view')</a>
        @if (auth()->id() === $document->user_id)
        <a href="{{ route('document.edit', $document->id) }}" class="btn btn-primary btn-sm">@lang('lang.edit')</a>
        <!-- Vous pouvez également ajouter un bouton pour supprimer ici si vous le souhaitez -->
        @endif
        </td>
        </tr>
        @endforeach
        </tbody>
        </table>
       
        </div>
</div>
@endsection