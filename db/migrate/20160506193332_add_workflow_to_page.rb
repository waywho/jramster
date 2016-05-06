class AddWorkflowToPage < ActiveRecord::Migration
  def change
    add_column :pages, :workflow_state, :string
    add_column :pages, :published_at, :datetime
    add_column :pages, :ancestry, :string
    add_column :pages, :feature, :boolean
    add_column :pages, :feature_image, :string
  end
end
