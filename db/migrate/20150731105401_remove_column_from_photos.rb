class RemoveColumnFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :description, :text
  end
end
