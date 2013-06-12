class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.string :text
  		t.string :author_id
  		t.date :date
  	end
  end		
end

 