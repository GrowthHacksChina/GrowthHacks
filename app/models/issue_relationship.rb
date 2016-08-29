# == Schema Information
#
# Table name: issue_relationships
#
#  id         :integer          not null, primary key
#  issue_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IssueRelationship < ApplicationRecord
  belongs_to :issue
  belongs_to :user
end
