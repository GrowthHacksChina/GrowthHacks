
class Job < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0 }
  validates :contact_email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "请输入正确的邮箱格式！" }
end

# == Schema Information
#
# Table name: jobs
#
#  id                  :integer          not null, primary key
#  title               :string
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  wage_upper_bound    :integer
#  wage_lower_bound    :integer
#  contact_email       :string
#  work_address        :string
#  work_experience     :string
#  company             :string
#  company_description :text
#
