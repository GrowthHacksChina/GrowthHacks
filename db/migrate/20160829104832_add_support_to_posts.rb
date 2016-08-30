class AddSupportToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :support, :integer, default: 0
    remove_column :likes, :support
  end
end
