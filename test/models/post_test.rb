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
#  pv                 :text
#  favorite           :string
#  introduce          :string
#  brief_introduction :text
#  image              :string
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
#  brief_introduction :text
#  image              :string

require 'test_helper'

class PostTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
end
