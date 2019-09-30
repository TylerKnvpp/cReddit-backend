class AddTopicToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :topic, :string
  end
end
