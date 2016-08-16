class AddAnotherDetailToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :company_description, :text
  end
end
