class CreateLikeRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :like_relationships do |t|
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
