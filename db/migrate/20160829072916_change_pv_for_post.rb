class ChangePvForPost < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :pv, :integer
  end
end
