class CreateComments < ActiveRecord::Migration
 def change
  	create_table :comments do |t|
  		t.string :text
  		t.string :post_id
  		t.date :date
  	end
  end	
end
