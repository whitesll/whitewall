class RenameGoodColumnToVideos < ActiveRecord::Migration[6.0]
  def change
    rename_column :videos, :good, :Views
    add_column :videos, :title, :text
    add_column :videos, :url, :text
    add_column :videos, :date, :date
    add_column :videos, :description, :date
    add_column :videos, :thumbnail, :string
  end
end
