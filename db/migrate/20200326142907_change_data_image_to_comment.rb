class ChangeDataImageToComment < ActiveRecord::Migration[6.0]
  def change
    change_column :comments, :image, :string
  end
end
