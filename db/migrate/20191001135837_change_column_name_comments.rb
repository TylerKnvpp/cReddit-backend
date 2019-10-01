class ChangeColumnNameComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :is_fact?, :is_fact
  end
end
