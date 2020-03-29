class Post < ApplicationRecord
  validates :title, :game_id, presence: true
  has_many :comments
  belongs_to :game
end