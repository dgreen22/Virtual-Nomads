class CreateVideoPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :video_posts do |t|

      t.string :title
      t.string :video
      t.text :video_text
      t.string :posted_by
      t.text :comments
      t.references :admin

      t.timestamps
    end
  end
end
