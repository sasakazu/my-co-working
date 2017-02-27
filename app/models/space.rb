class Space < ApplicationRecord

  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }

  validates :title ,presence: true
  validates :place ,presence: true
  validates :image ,presence: true


end
