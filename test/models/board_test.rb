# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  comment    :text(65535)
#  image      :string(255)
#  address    :string(255)
#  mail       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
