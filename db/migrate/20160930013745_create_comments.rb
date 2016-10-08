class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|

      t.text :comment_content
      t.string :comment_content_creator

      t.timestamps
    end
  end
end
