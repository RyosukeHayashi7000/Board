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

class Board < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :board_tag_relations, dependent: :delete_all
  has_many :tags, through: :board_tag_relations 

  validates :name, presence: true, length: { maximum: 10}
  validates :title, presence: true, length: { maximum: 10}
  validates :comment, presence: true, length: { maximum: 1000}
  validates :address, presence: true, length: { maximum: 20}
  validates :mail, presence: true, length: { maximum: 40}
  


end
