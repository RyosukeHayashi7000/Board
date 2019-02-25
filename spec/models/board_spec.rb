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
