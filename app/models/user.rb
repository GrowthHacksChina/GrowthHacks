class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :issues
  has_many :jobs
  has_many :issue_relationships
  has_many :participated_issues, through: :issue_relationships, source: :issue

  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post
  mount_uploader :image, ImageUploader

  def admin?
    is_admin
  end

  def member_of?(issue)
    participated_issues.include?(issue)
  end

  def join!(issue)
    participated_issues << issue
  end

  def quit!(issue)
    participated_issues.delete(issue)
  end

  def join_favorite!(post)
    favorite_posts << post
  end

  def delete_favorite!(post)
    favorite_posts.delete(post)
  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  is_admin               :boolean          default(FALSE)
#  introduction           :text
#  image                  :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
