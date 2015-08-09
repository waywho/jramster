class CreateGallerizations < ActiveRecord::Migration
  def change
    create_table :gallerizations do |t|
      t.integer :project_id
      t.integer :photo_id
      t.integer :position
      t.datetime :created_at

      t.timestamps
    end
  end
end
