require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    #nameとpasswordが入っていれば有効であること
    it "is valid with name and password" do
      user = User.new(
        name: 'suzuki',
        password: 'aaaa4444'
      )
      expect(user).to be_valid
    end
  end
end
