class LikeRelationship < ApplicationRecord
  belongs_to :post
  belongs_to :user
end

# == Schema Information
#
# Table name: like_relationships
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#