# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  issue       :string
#  tag         :string
#  origin_link :string
#  PV          :string
#

class Issue < ApplicationRecord

  belongs_to :user

  validates :title, presence: true,length: { in: 1..40 }
  has_many :posts
  scope :recent, -> {order("created_at DESC")}

end
