<?php

namespace App\Http\Controllers;

use App\Models\BlogPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class BlogPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $posts = BlogPost::all();
        return view('blog.index', ['posts' => $posts]);
        // if (Auth::check()) {
        //     $posts = BlogPost::all();
        //     return view('blog.index', ['posts' => $posts]);
        // }else{
        //     return redirect(route('login'))->withSuccess('Vous devez vous connecter');
        // }

        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request;
        //insert into blogpost (title, body) values (?,?)
        //newdata=select * from blogpost where id=1
        $newPost = BlogPost::create([
            'title' => $request->title,
            'body' => $request->body,
            'user_id' => Auth::user()->id

        ]);
        return redirect(route('blog.index'))->withSuccess('Donnée enregistrée');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function show(BlogPost $blogPost)
    {

        return view('blog.show', ['blogPost' => $blogPost]);
        //return $blogPost;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function edit(BlogPost $blogPost)
    {
        return view('blog.edit', ['blogPost' => $blogPost]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BlogPost $blogPost)
    {
        //return $request->title;
        $blogPost->update([
            'title' => $request->title,
            'body' => $request->body
        ]);
        return redirect(route('blog.show', $blogPost->id))->withSuccess('Donnée mise à jour');
        ;

        //return view('blog.show', ['blogPost' => $blogPost]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(BlogPost $blogPost)
    {
        //return $blogPost;
        $blogPost->delete();
        return redirect(route('blog.index'))->withSuccess('Donnée effacée');
    }



    public function query()
    {

        //return "ee";
        //meme chose (selectAll)
        $query = BlogPost::all();
        $query = BlogPost::select()->get();

        $query = BlogPost::select()->first();

        $query = BlogPost::select()
            ->orderBy('title', 'desc')
            ->get();

        $query = BlogPost::select('title', 'body')
            //->where('id', 1)
            ->where('id', '=', 1)
            //->where('id', '>', 1)
            ->get();


        // Find(1) est identique a where id = 1
        $query = BlogPost::select('title', 'body')
            ->where('id', '=', 1)
            ->first();
        $id = $query->id;

        $query = BlogPost::find(1);
        //return $query;

        //SELECT
        $blog = BlogPost::select('title', 'body')
            ->get();
        //WHERE
        $blog = BlogPost::select()
            ->where('user_id', '=', 1)
            ->get();
        //WHERE Clé Primaire
        $blog = BlogPost::find(1);
        //AND
        $blog = BlogPost::select()
            ->where('user_id', '=', 1)
            ->where('id', '=', 1)
            ->get();
        //OR
        $blog = BlogPost::select()
            ->where('user_id', '=', 1)
            ->orWhere('id', '=', 1)
            ->get();
        //ORDER BY
        $blog = BlogPost::select()
            ->orderBy('title', 'DESC')
            ->get();
        //INNER JOIN
        $blog = BlogPost::select()
            ->join('users', 'blog_posts.user_id', '=', 'users.id')
            ->get();

        //LEFT / RIGHT OUTER JOIN
        $blog = BlogPost::select()
            ->rightJoin('users', 'blog_posts.user_id', '=', 'users.id')
            ->get();
        //Aggregates Function : Max, Min, Avg, Sum, Count
        $blog = BlogPost::max('id');
        //ou avec select
        $blog = BlogPost::where('user_id', 1)
            ->count('id');


        $blog = BlogPost::select()
            ->where('title', '=', 'le titre')
            ->where('title', '!=', 'le titre')
            ->orwhere('title', 'like', '%le titre%')
            ->get();


        //INNER JOIN (exclue les items sans user_id)
        $blog = BlogPost::select()
            ->join('users', 'blog_posts.user_id', '=', 'users.id')
            ->where('user_id', '=', 1)
            ->orderBy('title', 'DESC')
            ->get();

        //OUTER JOIN (inclue les items sans user_id)
        $blog = BlogPost::select()
            ->rightJoin('users', 'user_id', '=', 'users.id')
            ->get();

        //requete brute (select * from blog_posts where id = 1)
        $blog = BlogPost::select(DB::raw('count(*) as blogs'), 'user_id' )
            ->groupBy('user_id')
            ->get();

        return $blog;

    }

    public function page(){
        //return "";
        $blogPost=BlogPost::Select()
        ->paginate(5);
        //->get();
        return view('blog.page', ['blogPosts' => $blogPost]);
    }
}
