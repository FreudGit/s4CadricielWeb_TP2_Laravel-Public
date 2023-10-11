@extends('layouts.layout')
@section('title', 'Liste des articles')
@section('content')
<hr>
<div class="row">
    <div class="col-12 pt-2">
        <a href="{{ route('blog.index') }}" class="btn btn-outline-primary btn-sm">Retourner</a>
        <h4 class="display-4 mt-5">
            {{ $blogPost->title }}
        </h4>
        <hr>
        <p>
            {!! $blogPost->body !!}
        </p>
        <p>
            <strong>Author: </strong> {{ $blogPost->blogHasUser->name }}
        </p>
    </div>
</div>
<hr>
<div class="row mb-5">
    <div class="col-6">
        <a href="{{ route('blog.edit', $blogPost->id) }}" class="btn btn-primary">Mettre a
            jour</a>
    </div>
    <div class="col-6">

        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
            effacer
        </button>

    </div>
</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Effacer</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Voulez-vous vraiment effacer la donnée? {{ $blogPost->title }}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <form action="{{ route('blog.delete', $blogPost->id) }}" method="post">
                    @method('DELETE')
                    @csrf
                    <input type="submit" class="btn btn-danger" value="Supprimer">

                </form>
            </div>
        </div>
    </div>
</div>
@endsection
