class ChangePvTotextForPost < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :pv , :text
  end
end
