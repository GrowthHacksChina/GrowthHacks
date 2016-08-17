# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :text
#  issue_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord

  belongs_to :issue
  belongs_to :user

  validates :content, presence: true
  scope :recent, -> {order("created_at DESC")}
end
