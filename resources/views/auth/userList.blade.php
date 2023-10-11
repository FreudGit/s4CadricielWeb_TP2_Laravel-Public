@extends('layouts/layout')

@section('title', "Liste d'usagers")

@section('content')



<div class="card text-start">
    <div class="card-header">
        <h3> Liste des usagers:</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <!-- <th>#</th> -->
                    <th>Name</th>
                    <th>email</th>
                    <th>Posts</th>

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
                                    <li>Pas de posts</li>
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
