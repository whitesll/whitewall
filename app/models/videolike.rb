class Videolike < ApplicationRecord
  belongs_to :videocomment, counter_cache: :likes_count
  belongs_to :user
end
