@extends('layouts/layout')

@section('title', trans('lang.userlist_title'))

@section('content')



<div class="card text-start">
    <div class="card-header">
        <h3> @lang('lang.userlist_title')</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <!-- <th>#</th> -->
                    <th>@lang('lang.name')</th>
                    <th>@lang('lang.email')</th>
                    <th>@lang('lang.posts')</th>

                </tr>
            </thead>
            <tbody>
                @foreach($users as $user)
                    <tr>
                        <!-- <td>{{ $user->id }}</td> -->
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            <ul>
                                @forelse($user->userHasPosts as $post)
                                    <li>
                                        <a
                                            href="{{ route('blog.show', $post->id) }}">{{ $post->title }}</a>
                                    </li>

                                @empty
                                    <li>@lang('lang.noposts')</li>
                                @endforelse
                            </ul>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $users }}
    </div>
</div>
@endsection
