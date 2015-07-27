class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :title
    	t.text :overview
    	t.text :details
    	t.integer :page_id

      t.timestamps
    end
    add_index :projects, :page_id
  end
end
