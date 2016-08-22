class RenamePostPvToPv < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :PV, :pv
  end
end
