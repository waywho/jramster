class ChangePhotoColumns < ActiveRecord::Migration
  def change
  	add_column :photos, :caption, :string
  	remove_column :photos, :feature_img
  end
end
