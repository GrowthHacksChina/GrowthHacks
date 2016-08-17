class RenameGroupIdToIssueId < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :group_id, :issue_id
  end
end
