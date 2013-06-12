get "/new_post" do
  erb :new_post
end

post "/new_post" do
  @post = Post.create(params[:post])
  @author = Author.find_or_create_by_name(params[:author_name])
  @post.update_attributes(:author_id => @author.id)
	redirect "/"
end