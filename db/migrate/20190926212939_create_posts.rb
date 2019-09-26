class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :image_url
      t.references :user, foreign_key: true
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
