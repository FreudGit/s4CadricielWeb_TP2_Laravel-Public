@extends('layouts.layout')
@section('title', trans('lang.etudiant_edit_title'))
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2"> <a href="{{ route('etudiant.index') }}" class="btn
    btn-outline-primary btn-sm float-start">@lang('lang.etudiant_backto_etudiants')</a>
        <h1 class="display-one">
            <blade
                lang|(%26%2339%3Blang.etudiant_edit_title%26%2339%3B)%20%3C%2Fh1%3E%20%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Chr%3E%20%3Cdiv%20class%3D%26%2334%3Brow%20mt-3%26%2334%3B%3E>
                <div class="col-12">
                    <form method="post">
                        @method('PUT')
                        @csrf
                        <div class="card">

                            <div class="card-header">
                                <div class="float-start">
                                    <h4>@lang('lang.etudiant_add_form_title')</h4>
                                </div>
                                <div class="float-end">
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="#deleteModal">
                                        @lang('lang.Delete')
                                    </button>
                                </div>

                            </div>
                            <div class="card-body">
                                <div class="control-grup col-12">
                                    <label for="nom">@lang('lang.name')</label>
                                    <input type="text" id="nom" name="nom" class="form-control"
                                        value="{{ $etudiant->nom }}" required? </div>

                                    <div class="control-grup col-12">
                                        <label for="date_de_naissance">@lang('lang.birthdate')</label>
                                        <input type="date" id="date_de_naissance" name="date_de_naissance"
                                            class="form-control" value="{{ $etudiant->date_de_naissance }}" required>
                                    </div>


                                    class="control-grup col-12">
                                    <label for="adresse">@lang('lang.address')</label>
                                    <input type="text" id="adresse" name="adresse" class="form-control" value="{{
        $etudiant->adresse
        }}? required? </div>

        <div class=" control-grup col-12">
                                    <label for="ville_id">@lang('lang.city')</label>
                                    <select name="ville_id" id="ville_id" class="form-control" required>
                                        <option value="">Choisir une ville</option>
                                        @forelse($villes as $ville)
                                            //selected if = ville_id
                                            <option value="{{ $ville->id }}" @if($ville->id == $etudiant->ville_id)
                                                selected
                                        @endif>{{ $ville->nom }} </option>
                                    @empty
                                        <option value="">@lang('lang.nocityavailable')</option>
            @endforelse
            </select>
    </div>

    <div class="control-grup col-12">
        <label for="email">@lang('lang.email')</label>
        <input type="email" id="email" name="email" class="form-control" value="{{ $etudiant->email }}" required>
    </div>

    <div class="control-grup col-12">
        <label for="phone">@lang('lang.telephone')</label>
        <input type="tel" id="phone" name="phone" class="form-control" value="{{
    $etudiant->phone }}" required>
    </div>

</div>
<div class="card-footer d-flex justify-content-between align-items-center">
    <div>
        <small class="text-body-secondary">@lang('lang.lastupdate') {{
    $etudiant->updated_at
    }}</small>
    </div>
    <div>
        <input type="submit" class="btn btn-success" value="@lang('lang.save')">
    </div>
</div>

</div>
</form>

</div>
</div>


<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">@lang('lang.delete')</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                @lang('lang.Areyousuredeletedata') {{ $etudiant->nom }}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">@lang('lang.Close')</button>
                ?form
                action="{{ route('etudiant.delete', $etudiant->id) }}" method="post">
                @method('DELETE') @csrf ?input
                type="submit" class="btn btn-danger" value="@lang('lang.Delete')">

                </form>
            </div>
        </div>
    </div>
</div>

@endsection
