@extends('layouts.layout')
@section('title', trans('lang.text_main_welcome'))
@section('content')

<hr>
<div class="row mt-3  ">
    <div class="col-12">
        <form method="post">
            @method('PUT')
            @csrf
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        <h4 class="mt-2">@lang('lang.welcome_title')</h4>
                    </div>
                </div>
                <div class="card-body">
                @lang('lang.welcome_p1_subtext')

                    <p class='mt-3'>@lang('lang.welcome_p2_subtext')
</p>
                </div>
                <div class="card-footer ">
                    <div>
                        <a href="{{ route('etudiant.index') }}"
                            class="btn btn-outline-primary float-end">@lang('lang.text_login_btn_login')
</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection
