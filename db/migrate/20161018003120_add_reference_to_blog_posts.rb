class AddReferenceToBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :blog_posts, :admin
  end
end
