@extends('layouts.layout')
@section('title', trans('lang.blogs_title'))
@section('content')


<hr>
<div class="row mt-3  ">
    <div class="col-12">
        <div class="card  transparent-background">
            <div class="card-header transparent-background ">
                <div class="float-start">
                    <h4>@lang('lang.blogs_title')</h4>
                </div>
                <div class="float-end">
                    <a href="{{ route('blog.create') }}" class="btn btn-dark ml-auto">@lang('lang.btn_add')</a>
                </div>
            </div>
            <div class="card-body transparent-background ">
                <ul>
                    @forelse($posts as $post)
                        <div class="card mb-2">
                            <div class="card-header ">
                                {{ $post->title }}

                            </div>
                            <div class="card-body  text-left">
                                <p class="card-text text-left text-lg text-muted">
                                        {{ Str::limit($post->body, $limit = 200, $end = '...') }}

</p>
                            </div>
                            <div class="card-footer d-flex justify-content-between align-items-center">
                                <div>
                                    <small class="text-body-secondary">@lang('lang.lastupdate')
                                        {{ $post->updated_at }}</small>
                                </div>
                                <div>
                                    <a href="{{ route('blog.show', $post->id) }}"
                                        class="btn btn-primary btn-sm">Infos</a>
@if(Auth::check() && Auth::user()->id == $post->user_id)

                                    <a href="{{ route('blog.edit', $post->id) }}"
                                        class="btn btn-outline-secondary btn-sm">@lang('lang.btn_edit')</a>
@endif

                                </div>
                            </div>
                        </div>
                    @empty
                        <li class='text-danger'>Aucun article disponible</li>
                    @endforelse
                </ul>
                <!-- {{ $posts }} -->
            </div>
        </div>
    </div>
</div>
@endsection
