# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#

class Favorite < ApplicationRecord
    validates :user_id, presence: true
    validates :board_id, presence: true
    belongs_to :user
    belongs_to :board
end
