class RenameissuesToIssues < ActiveRecord::Migration[5.0]
  def change
    rename_table :groups, :issues
  end
end
