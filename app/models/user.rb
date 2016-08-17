class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :issues
  has_many :jobs
  has_many :issue_relationships
  has_many :participated_issues, :through => :issue_relationships, :source => :issue


    def admin?
      is_admin
    end

    def is_member_of?(issue)
      participated_issues.include?(issue)
    end

    def join!(issue)
      participated_issues << issue
    end

    def quit!(issue)
      participated_issues.delete(issue)
    end


end
