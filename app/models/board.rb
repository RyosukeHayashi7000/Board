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

class Board < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :board_tag_relations, dependent: :delete_all
  has_many :tags, through: :board_tag_relations
  belongs_to :user

  
  validates :title, presence: true, length: { maximum: 10}
  validates :comment, presence: true, length: { maximum: 1000}
  validates :address, presence: true, length: { maximum: 20}
  validates :mail, presence: true, length: { maximum: 40}
  validates :user_id, presence: true
  
end
