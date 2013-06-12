require "bundler"
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'cstewa', # Change the username to yours.
  :password => '',
  :database => 'blog', # Make sure your new DB name matches.
  :encoding => 'utf8'
)


require_relative "models/author"
require_relative "models/comment"
require_relative "models/post"
require_relative "models/tag" 

require_relative "controllers/authors" 
require_relative "controllers/comments" 
require_relative "controllers/posts" 
require_relative "controllers/tags"

get "/" do
	@authors = Author.all 
	@posts = Post.all
	@tags = Tag.all 
	@comments = Comment.all 

	erb :index 
end  