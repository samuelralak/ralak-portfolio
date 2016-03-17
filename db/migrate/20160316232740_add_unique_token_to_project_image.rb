class AddUniqueTokenToProjectImage < ActiveRecord::Migration
  def change
    add_column :project_images, :unique_token, :string
    add_index :project_images, :unique_token
  end
end
