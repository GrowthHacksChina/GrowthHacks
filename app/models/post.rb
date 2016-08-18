# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  content     :text
#  issue_id    :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string
#  author      :string
#  issue       :string
#  tag         :string
#  origin_link :string
#  PV          :string
#  favorite    :string
#

class Post < ApplicationRecord

  belongs_to :issue
  belongs_to :user

  validates :content, presence: true
  validates :title, presence: true
  validates :author, presence: true
  scope :recent, -> {order("created_at DESC")}
end
