@extends('layouts.layout')
@section('title', 'Liste des articles')
@section('content')

<hr>
<div class="row">
    <div class="col-md-8">
        <p>Bonne lecture</p>
    </div>
    <div class="col-md-4">
        <!-- <a href="{{ route('blog.create') }}" class='btn btn-primary'>Ajouter</a> -->
    </div>
</div>
<div class="row mt-3">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Liste des articles</h4>
            </div>
            <div class="card-body">

                <ul>
                    @forelse($posts as $post)
                        <li>{{ $post->user_id }}-{{ Auth::user()->id }} <a
                                href="{{ route('blog.show', $post->id) }}">{{ $post->title }}</a>
@if(Auth::check() && Auth::user()->id == $post->user_id)
    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
        effacer
    </button>
@endif



                                
                        </li>
                    @empty
                        <li class='text-danger'>Aucun article disponible</li>
                    @endforelse
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection
