class AddReferencesToCategorizations < ActiveRecord::Migration[5.0]
  def change
  	add_reference :categorizations, :blog_post
  	add_reference :categorizations, :category
  end
end
