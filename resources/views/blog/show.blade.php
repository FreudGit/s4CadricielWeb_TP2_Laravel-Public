@extends('layouts.layout')
@section('title', trans('lang.blog_show_title'))
@section('content')

<div class="row"> <div class="col-12 text-center pt-2">
    <h1 class="display-one">
    @lang('lang.blog_show_title')
    </h1>
    </div> </div> <hr>
    <div class="row justify-content-center"> <div class="col-md-6"> <div class="card">
        <div class="card-header">
        @lang('lang.blog_show_title'):
    </div>
    <div class="card-body">
    <!-- Language Tabs -->
    <ul class="nav nav-tabs" id="languageTabs" role="tablist">
        <li class="nav-item" role="presentation">
        <a class="nav-link @if(session('locale', 'en') == 'en') active @endif" id="english-tab"
        data-bs-toggle="tab" href="#english" role="tab" aria-controls="english"
        aria-selected="true">@lang('lang.English')</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link @if(session('locale', 'en') == 'fr') active @endif" id="french-tab"
            data-bs-toggle="tab" href="#french" role="tab" aria-controls="french"
            aria-selected="false">@lang('lang.French')</a>
            </li>
            </ul>
            <div class="tab-content" id="languageTabsContent">
                <!-- English Tab -->
                <div class="tab-pane fade @if(session('locale', 'en') == 'en') show active @endif" id="english"
                role="tabpanel" aria-labelledby="english-tab">
                <div class="control-group col-12">
                <label for="title_en"><strong>@lang('lang.Title')</strong></label>
                <p>{{ $blogPost->title_en }}</p>
                </div>
                <div class="control-group col-12">
                <label for="body_en"><strong>@lang('lang.Body')</strong></label>
                <p>{{ $blogPost->body_en }}</p>
                </div>
            </div>
            <!-- French Tab -->
            <div class="tab-pane fade @if(session('locale', 'en') == 'fr') show active @endif" id="french"
            role="tabpanel" aria-labelledby="french-tab">
            <div class="control-group col-12">
            <label for="title_fr"><strong>@lang('lang.Title')</strong></label>
            <p>{{ $blogPost->title_fr }}</p>
            </div>
            <div class="control-group col-12">
            <label for="body_fr"><strong>@lang('lang.Body')</strong></label>
            <p>{{ $blogPost->body_fr }}</p>
            </div>
</div>
</div>
</div>
<div class="card-footer d-flex justify-content-end">
    <div>
        <a href="{{ route('blog.index') }}" class="btn btn-outline-primary btn-sm">OK</a>
    </div>
</div>
</div>
</div>
</div>

@endsection