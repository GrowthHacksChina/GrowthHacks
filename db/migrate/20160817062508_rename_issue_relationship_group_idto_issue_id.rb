class RenameIssueRelationshipGroupIdtoIssueId < ActiveRecord::Migration[5.0]
  def change
    rename_column :issue_relationships, :group_id, :issue_id
  end
end
