class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  validates :comment, presence: true, unless: :image?
  mount_uploader :image, ImagesUploader
end
