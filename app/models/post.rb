class Post < ApplicationRecord
  belongs_to :group
  validates :content, presence: true
  scope :recent, -> {order("created_at DESC")}
end
