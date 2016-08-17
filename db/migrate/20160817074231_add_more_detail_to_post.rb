class AddMoreDetailToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :author, :string
    add_column :posts, :issue, :string
    add_column :posts, :tag, :string
    add_column :posts, :origin_link, :string
    add_column :posts, :PV, :string
    add_column :posts, :favorite, :string
  end
end
