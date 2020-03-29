class RenameGoodColumnToVideocomments < ActiveRecord::Migration[6.0]
  def change
    rename_column :videocomments, :good, :likes_count
  end
end
