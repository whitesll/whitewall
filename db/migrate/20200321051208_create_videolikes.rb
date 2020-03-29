class CreateVideolikes < ActiveRecord::Migration[6.0]
  def change
    create_table :videolikes do |t|
      t.integer     :user_id
      t.integer     :videocomment_id
      t.timestamps
    end
  end
end
