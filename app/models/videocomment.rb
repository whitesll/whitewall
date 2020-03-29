class Videocomment < ApplicationRecord
  belongs_to :user
  belongs_to :video
  has_many :videolikes, dependent: :destroy
  has_many :videoliking_users, through: :videolikes, source: :user

  validates :comment, presence: true
end
