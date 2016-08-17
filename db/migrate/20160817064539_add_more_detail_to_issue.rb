class AddMoreDetailToIssue < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :issue, :string
    add_column :issues, :tag, :string
    add_column :issues, :origin_link, :string
    add_column :issues, :PV, :string
  end
end
