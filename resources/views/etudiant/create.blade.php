@extends('layouts.layout')
@section('title', 'Ajout étudiant')
@section('content')
<div class="row">
    <div class="col-12 text-center pt-2"> <a href="{{ route('etudiant.index') }}"
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

            @csrf
            <div class="card">

                <div class="card-header">
                    <div class="float-start">
                        <h4>@lang('lang.etudiant_add_form_title')</h4>
                    </div>


                </div>
                <div class="card-body">
                    <div class="control-grup col-12">
                        <label for="nom">@lang('lang.name')</label>
                        <input type="text" id="nom" name="nom" class="form-control" value="" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="date_de_naissance">@lang('lang.birthdate')</label>
                        <input type="date" id="date_de_naissance" name="date_de_naissance" class="form-control" value=""
                            required>
                    </div>


                    <div class="control-grup col-12">
                        <label for="adresse">@lang('lang.address')</label>
                        <input type="text" id="adresse" name="adresse" class="form-control" value="" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="ville_id">@lang('lang.city')</label>
                        <select name="ville_id" id="ville_id" class="form-control" required>
                            <option value="">@lang('lang.Choosecity')</option>
                            @forelse($villes as $ville)
                                //selected if = ville_id
                                <option value="{{ $ville->id }}">{{ $ville->nom }} </option>
                            @empty
                                <option value="">@lang('lang.nocityavailable')</option>
                            @endforelse
                        </select>


                    </div>

                    <div class="control-grup col-12">
                        <label for="email">@lang('lang.email')</label>
                        <input type="email" id="email" name="email" class="form-control" value="" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="phone">@lang('lang.telephone')</label>
                        <input type="tel" id="phone" name="phone" class="form-control" value="" required>
                    </div>

                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <div>

                    </div>
                    <div>
                        <input type="submit" class="btn btn-success" value="@lang('lang.save')">
                    </div>
                </div>

            </div>
        </form>

    </div>
</div>



@endsection
