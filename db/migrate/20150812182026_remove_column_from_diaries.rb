class RemoveColumnFromDiaries < ActiveRecord::Migration
  def change
    remove_column :diaries, :page_id, :integer
  end
end
