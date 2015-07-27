class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.text :description
    	t.integer :project_id
    	t.boolean :feature_img, :default => false

      t.timestamps
    end
    add_index :photos, :project_id
  end
end
