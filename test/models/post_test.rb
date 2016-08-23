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
#  brief_introduction :text
#

<<<<<<< HEAD
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
=======
#  id          :integer          not null, primary key
#  content     :text
#  issue_id    :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string
#  author      :string
#  issue       :string
#  tag         :string
#  origin_link :string
#  PV          :string
#  favorite    :string
#  introduce   :string
>>>>>>> c00c2b8f74d358aec5ae53afdcfb8f0925a0371a
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
