get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  @post = Post.new(params[:post])

  if request.xhr?
    if @post.save
      erb :'posts/_post', layout: false, locals: {post: @post }
    else
      status 422
      "something went wrong"
    end
  else
    if @post.save
      redirect "posts/#{@post.id}"
    else
      erb :"posts/new"
    end
  end
end

get "/posts/new" do
  @post = Post.new
  erb :'posts/new'
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

put "/posts/:id/like" do
  @post = Post.find(params[:id])
  @post.increment!(:likes_count)
  if request.xhr?
    content_type :json
    {points: post_likes_count(@post)}.to_json
  elsif
    redirect "/posts/#{@post.id}"
  else
    @errors = @post.errors.full_messages
  end
end




 








