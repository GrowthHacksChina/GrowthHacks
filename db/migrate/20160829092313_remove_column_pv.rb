class RemoveColumnPv < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :pv

    add_column :posts, :pv , :integer, default: 1
  end
end
