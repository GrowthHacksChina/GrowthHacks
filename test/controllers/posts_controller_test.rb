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
#  support            :integer          default(0)
#  brief_introduction :text
#  pv                 :integer          default(1)
#

require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
    # test "the truth" do
    #   assert true
    # end
end
