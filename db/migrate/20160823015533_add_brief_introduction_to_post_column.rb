class AddBriefIntroductionToPostColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :brief_introduction, :text
  end
end
