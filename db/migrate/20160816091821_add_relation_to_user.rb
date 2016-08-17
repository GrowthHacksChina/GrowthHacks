class AddRelationToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :user_id ,:integer
    add_column :jobs, :user_id ,:integer

  end
end
