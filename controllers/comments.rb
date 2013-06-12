post "/new_comment/:post_id" do
	@comment = Comment.new(params[:comment])	
	if @comment.save
		@post = Post.find_by_id(params[:post_id])
		@post.comments << @comment
		redirect "/"
	else 
		erb :index
	end
end