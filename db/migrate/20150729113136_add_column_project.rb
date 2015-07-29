class AddColumnProject < ActiveRecord::Migration
  def change
  	add_column :projects, :feature_image, :string
  end
end
