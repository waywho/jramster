class CreateTableProjectsPhotos < ActiveRecord::Migration
  def change
    create_table :projects_photos, id: false do |t|
    	t.belongs_to :project, index: true
    	t.belongs_to :photo, index: true
    end
  end
end
