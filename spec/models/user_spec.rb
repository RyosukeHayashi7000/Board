# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

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
