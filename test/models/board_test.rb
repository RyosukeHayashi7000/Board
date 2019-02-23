# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  comment    :text(65535)
#  image      :string(255)
#  mail       :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
