class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :upvotes
      t.integer :downvotes
      t.string :source
      t.integer :source_validated
      t.integer :source_disputed
      t.boolean :is_fact?
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
