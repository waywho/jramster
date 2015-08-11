class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
    	t.string :title
    	t.text :content
    	t.datetime :date
    	t.integer :page_id
      t.timestamps
    end
    add_index :diaries, :page_id
  end
end
