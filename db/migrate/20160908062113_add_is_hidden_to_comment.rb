class AddIsHiddenToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :is_hidden, :boolean, default: false
  end
end
