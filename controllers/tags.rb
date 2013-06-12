get "/new_tag" do 
	@tags = Tag.all 
	erb :new_tag
end

post "/new_tag" do
	@tags = Tag.all
	Tag.create(params[:tag])
	redirect "/new_tag"
end 