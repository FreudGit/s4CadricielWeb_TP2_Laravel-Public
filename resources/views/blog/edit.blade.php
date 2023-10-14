@extends('layouts.layout')
@section('title', trans('lang.update'))
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <h1 class="display-one">
            @lang('lang.update')
        </h1>
    </div>
</div>
<hr>
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <form method="post">
                @method('PUT')
                @csrf
                <div class="card-header">
                    @lang('lang.update'):
                </div>
                <div class="card-body">
                    <!-- Language Tabs -->
                    <ul class="nav nav-tabs" id="languageTabs" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link @if(session('locale', 'en') == 'en') active @endif" id="english-tab"
                                data-bs-toggle="tab" href="#english" role="tab" aria-controls="english"
                                aria-selected="true">English</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link @if(session('locale', 'en') == 'fr') active @endif" id="french-tab"
                                data-bs-toggle="tab" href="#french" role="tab" aria-controls="french"
                                aria-selected="false">@lang('lang.French')</a> </li>
                    </ul>
                    <div class="tab-content" id="languageTabsContent">
                        <!-- English Tab -->
                        <div class="tab-pane fade @if(session('locale', 'en') == 'en') show active @endif" id="english"
                            role="tabpanel" aria-labelledby="english-tab">
                            <div class="control-group col-12">
                                <label for="title_en">@lang('lang.Title') (@lang('lang.English'))</label>
                                <input type="text" id="title_en" name="title_en" class="form-control"
                                    value="{{ $blogPost->title_en }}" required> </div>
                            <div class="control-group col-12">
                                <label for="body_en">@lang('lang.Body') (@lang('lang.French'))</label>
                                <textarea class="form-control" id="body_en" name="body_en"
                                    required>{{ $blogPost->body_en }}</textarea>
                            </div>
                        </div>
                        <!-- French Tab -->
                        <div class="tab-pane fade @if(session('locale', 'en') == 'fr') show active @endif" id="french"
                            role="tabpanel" aria-labelledby="french-tab">
                            <div class="control-group col-12">
                                <label for="title_fr">@lang('lang.Title') (@lang('lang.English'))</label>
                                <input type="text" id="title_fr" name="title_fr" class="form-control"
                                    value="{{ $blogPost->title_fr }}" required>
                            </div>
                            <div class="control-group col-12">
                                <label for="body_fr">@lang('lang.Body') (@lang('lang.French'))</label>
                                <textarea class="form-control" id="body_fr" name="body_fr"
                                    required>{{ $blogPost->body_fr }}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <input type="submit" class="btn btn-success" value="@lang('lang.save')">
                </div>
            </form>
        </div>
    </div>
</div>


@endsection
