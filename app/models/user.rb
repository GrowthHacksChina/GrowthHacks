class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    is_admin
  end

  def is_member_of?(group)
    participated_groups.include?(group)
  end
  
  has_many :groups
  has_many :jobs
  has_many :group_relationships
  has_many :participated_groups, :through => :group_relationships, :source => :group

end
