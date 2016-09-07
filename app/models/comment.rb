class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, presence: true
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
#
