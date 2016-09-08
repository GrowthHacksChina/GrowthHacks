
class Post < ApplicationRecord
  belongs_to :issue
  belongs_to :user

  has_many :favorites
  has_many :favorite_by_users, through: :favorites, source: :user

  has_many :like_relationships
  has_many :likers, through: :like_relationships, source: :user

  has_many :comments

  validates :content, presence: true
  validates :title, presence: true, length: { in: 1..50 }
  validates :author, presence: true
  validates_length_of :brief_introduction, maximum: 200

  validates :content, presence: true
  validates :title, presence: true
  validates :author, presence: true

  scope :recent, -> { order("id DESC") }
  scope :hot_post, -> { order("pv DESC").limit(10) }
  scope :favorite_posts, -> { order("support DESC").limit(9) }


  mount_uploader :image, ImageUploader

  def visit
    Post.increment_counter(:pv, id)
  end

  def previous
    Post.where(["id < ?", id]).last
  end

  def next
    Post.where(["id > ?", id]).first
  end

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
#  favorite           :string
#  image              :string
#  brief_introduction :text
#  pv                 :integer          default(1)
#  support            :integer          default(0)
#  is_hidden          :boolean          default(FALSE)
#
# Indexes
#
#  index_posts_on_issue_id  (issue_id)
#
