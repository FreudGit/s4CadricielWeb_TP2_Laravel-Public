@extends('layouts.layout')
@section('title', trans('lang.blog_title'))
@section('content')



<div>
    <a href="{{ route('blog.index') }}" class="btn btn-outline-primary btn-sm btn-dark">@lang('lang.back')
    </a>
</div>

<div class="row justify-content-center">

    <div class="col-md-6">
        <div class="card">
            <form method="post">
                @method('PUT')
                @csrf
                <div class="card-header">
                    Formulaire
                </div>
                <div class="card-body">
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
                <div class="card-footer  d-flex justify-content-between align-items-center">
                    <div >
                        <a href="{{ route('blog.edit', $blogPost->id) }}"
                            class="btn btn-primary btn-sm">@lang('lang.update')
                        </a>
                    </div>
                    <div >

                        <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                            data-bs-target="#deleteModal">
                            @lang('lang.delete')
                        </button>

                    </div>
                </div>
            </form>
        </div>
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
                @lang('lang.Areyousuredeletedata')  {{ $blogPost->title }}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary " data-bs-dismiss="modal">Close</button>
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
