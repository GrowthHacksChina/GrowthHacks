class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, presence: true

  scope :recent, -> { order("created_at DESC")}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  is_hidden  :boolean          default(FALSE)
#
