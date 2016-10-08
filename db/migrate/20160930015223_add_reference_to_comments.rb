class AddReferenceToComments < ActiveRecord::Migration[5.0]
  
  def change
  	add_reference :comments, :blog_post
  end

end
