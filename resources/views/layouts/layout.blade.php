<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>{{ config('app.name')}} - @yield('title')</title> -->
    <title>@lang('lang.text_master_title') - @yield('title')</title>

    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">

    <!--Bootstrap CSS CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">


</head>
<body class='bcg-light layout backgroundimage '>

    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            @php $locale = session()->get('locale'); @endphp

            <a class="navbar-brand" href="{{ route('root') }}">@lang('lang.nav_hello')
                {{ Auth::user() ? Auth::user()->name: "guest" }}</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
        @guest
            <a class="nav-link" href="{{ route('user.create') }}">@lang('lang.nav_registration')</a>
            <a class="nav-link" href="{{ route('login') }}">@lang('lang.nav_login')</a>
        @else
        <a class="nav-link" href="{{ route('etudiant.index') }}">@lang('lang.nav_students')</a>
   
        <a class="nav-link" href="{{ route('user.list') }}">@lang('lang.nav_studentsDetail')</a>
        <a class="nav-link" href="{{ route('blog.index') }}">@lang('lang.nav_blogs')</a>
        <a class="nav-link" href="{{ route('document.index') }}">@lang('lang.nav_documents')</a>

        <a class="nav-link" href="{{ route('logout') }}">Logout</a>
        @endguest
    </div>
    
    <!-- Right-aligned language options -->
    <div class="ms-auto">
        <a class="nav-link @if($locale=='en') bg-secondary @endif" href="{{ route('lang', 'en') }}">EN</a>
        <a class="nav-link @if($locale=='fr') bg-secondary @endif" href="{{ route('lang', 'fr') }}">FR</a>
    </div>
</div>
        </div>
    </nav>
    <div class="container mb-5">
        <div class="row">
            <div class="col-12 text-center pt-4">
                <h1 class="display-3  mt-5">
                    @lang('lang.text_master_title')
                </h1>
                @if(session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{session('success')}}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
            </div>
            @yield('content')
        </div>
    </div>
</body>
    <!--Bootstrap JS CDN-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</html>

