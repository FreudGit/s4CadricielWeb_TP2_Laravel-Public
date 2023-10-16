<?php

namespace App\Http\Controllers;

use App\Models\BlogPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;



class BlogPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = BlogPost::blogPostSelect()->paginate(40);
        return view('blog.index', ['posts' => $posts]);
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

        $validatedData = $request->validate([
            'title_en' => 'required|string|max:255',
            'body_en' => 'required|string',
            'title_fr' => 'required|string|max:255',
            'body_fr' => 'required|string',
        ]);
        $newPost = BlogPost::create([
            'title_en' => $request->title_en,
            'body_en' => $request->body_en,
            'title_fr' => $request->title_fr,
            'body_fr' => $request->body_fr,
            'user_id' => Auth::user()->id

        ]);
        return redirect(route('blog.index'))->withSuccess(trans('lang.Itemadded'));
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
        $validatedData = $request->validate([
            'title_en' => 'required|string|max:255',
            'body_en' => 'required|string',
            'title_fr' => 'required|string|max:255',
            'body_fr' => 'required|string',
        ]);
        $blogPost->update([
            'title_en' => $request->title_en,
            'body_en' => $request->body_en,
            'title_fr' => $request->title_fr,
            'body_fr' => $request->body_fr,
        ]);
        return redirect(route('blog.show', $blogPost->id))->withSuccess(trans('lang.Dataupdated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(BlogPost $blogPost)
    {
        $blogPost->delete();
        return redirect(route('blog.index'))->withSuccess(trans('lang.Datadeleted'));
    }


    public function page()
    {
        $blogPost = BlogPost::Select()
            ->paginate(5);
        return view('blog.page', ['blogPosts' => $blogPost]);
    }
}