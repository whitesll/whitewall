class AddGameIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :game_id, :integer
  end
end
