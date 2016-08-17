class RenameGroupRelationshipToIssueRelationship < ActiveRecord::Migration[5.0]
  def change
    rename_table :group_relationships, :issue_relationships
  end
end
