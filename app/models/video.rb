class Video < ApplicationRecord
  belongs_to :game
  has_many :videocomments
end
