class Issue < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  has_many :posts
end
