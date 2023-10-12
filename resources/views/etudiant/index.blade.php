@extends('layouts.layout')
@section('title', trans('lang.etudiants_index_title'))
@section('content')

<hr>
<div class="row mt-3 ">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="float-start">
                    <h4>@lang('lang.etudiants_index_title')</h4>
                </div>
                <div class="float-end">
                    <a href="{{ route('etudiant.create') }}"
                        class="btn btn-dark ml-auto">@lang('lang.btn_add')</a>
                </div>
            </div>
            <div class="card-body">
                <ul>
                    @forelse($etudiants as $etudiant)
                        <div class="card mb-2">
                            <div class="card-body  text-left">
                                <h5 class="card-title">{{ $etudiant->nom }}</h5>
                                <p class="card-text text-left">{{ $etudiant->adresse }}
                                    ({{ $etudiant->etudiantHasVille->nom }})</p>
                            </div>
                            <div class="card-footer d-flex justify-content-between align-items-center">
                                <div>
                                    <small class="text-body-secondary">@lang('lang.lastupdate')
                                        {{ $etudiant->updated_at }}</small>
                                </div>
                                <div>
                                    <a href="{{ route('etudiant.show', $etudiant->id) }}"
                                        class="btn btn-primary btn-sm">Infos</a>
                                    <a href="{{ route('etudiant.edit', $etudiant->id) }}"
                                        class="btn btn-outline-secondary btn-sm">@lang('lang.btn_edit')</a>
                                </div>
                            </div>
                        </div>
                    @empty
                        <li class='text-danger'>@lang('lang.Nodataavailable')</li>
                    @endforelse
                </ul>
                {{ $etudiants }}
            </div>
        </div>
    </div>
</div>
@endsection
