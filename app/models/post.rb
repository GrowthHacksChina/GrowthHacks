# == Schema Information
#
# Table name: posts
#
#  id                 :integer          not null, primary key
#  content            :text
#  issue_id           :integer
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  title              :string
#  author             :string
#  issue              :string
#  tag                :string
#  origin_link        :string
#  pv                 :string
#  favorite           :string
#  image              :string
#  brief_introduction :text
#

class Post < ApplicationRecord
    belongs_to :issue
    belongs_to :user

    validates :content, presence: true
    validates :title, presence: true
    validates :author, presence: true
    validates_length_of :brief_introduction, maximum: 200
    scope :recent, -> { order('created_at DESC') }

    def visit
        Post.increment_counter(:pv, self.id)
    end

    def previous
        Post.where(['id < ?', id]).last
    end

    def next
        Post.where(['id > ?', id]).first
    end

  validates :content, presence: true
  validates :title, presence: true
  validates :author, presence: true
  scope :recent, -> {order("created_at DESC")}

  has_many :favorites
  has_many :favorite_by_users,through: :favorites, source: :user

end
