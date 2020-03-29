class CreateVideocomments < ActiveRecord::Migration[6.0]
  def change
    create_table :videocomments do |t|
      t.integer :video_id
      t.integer :user_id
      t.text :comment
      t.integer :good
      t.timestamps
    end
  end
end
