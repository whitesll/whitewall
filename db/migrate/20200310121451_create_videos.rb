class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.integer :game_id
      t.integer :good
      t.timestamps
    end
  end
end
