class Board < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: { maximum: 10}
  validates :title, presence: true, length: { maximum: 10}
  validates :comment, presence: true, length: { maximum: 1000}
  validates :address, presence: true, length: { maximum: 20}
  validates :mail, presence: true, length: { maximum: 40}
  


end
