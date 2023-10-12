@extends('layouts.layout')
@section('title', trans('lang.etudiant_add_title'))
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <a href="{{ route('etudiant.index') }}"
            class="btn btn-outline-primary btn-sm float-start">@lang('lang.etudiant_backto_etudiants')</a>
        <h1 class="display-one">
            @lang('lang.etudiant_add_title')
        </h1>
    </div>
</div>
<hr>
<div class="row mt-3">
    <div class="col-12">
        <form method="post">
            @method('PUT')
            @csrf
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        <h4>@lang('lang.etudiant_add_form_title'): {{ $etudiant->nom }}</h4>
                    </div>
                </div>
                <div class="card-body">
                    <p class='d-flex flex-column'>
                        <div>
                            <strong>@lang('lang.name'): </strong> {{ $etudiant->nom }}
                        </div>
                        <div>
                            <strong>@lang('lang.birthdate'): </strong> {{ $etudiant->date_de_naissance }}
                        </div>
                        <div>
                            <strong>@lang('lang.address'): </strong> {{ $etudiant->adresse }}
                        </div>
                        <div>
                            <strong>@lang('lang.city'): </strong> {{ $etudiant->etudiantHasVille->nom }}
                        </div>
                        <div>
                            <strong>@lang('lang.email'): </strong> {{ $etudiant->email }}
                        </div>
                        <div>
                            <strong>@lang('lang.telephone'): </strong> {{ $etudiant->phone }}
                        </div>
                    </p>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">

                </div>
            </div>
        </form>
    </div>
</div>
@endsection
