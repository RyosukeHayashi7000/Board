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

require 'rails_helper'

RSpec.describe Board, type: :model do
  describe Board do
    #address title comment mail user_idが入っていれば有効であること
    it "is valid with address title comment mail user_id" do
      user = create(:user)
      board = user.boards.build(
        address: '田町駅',
        title: '靴',
        comment: '靴です',
        mail: 'ppp@uuu',
        user_id: 1
      )
      expect(board).to be_valid
    end
  end  
end
