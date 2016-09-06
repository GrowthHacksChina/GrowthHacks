class AddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :posts, :issue_id
  end
end
