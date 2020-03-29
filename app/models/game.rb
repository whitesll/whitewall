class Game < ApplicationRecord
  has_many :posts
  has_many :videos
end
