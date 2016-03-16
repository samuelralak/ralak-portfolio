class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images, id: :uuid do |t|
      t.uuid :project_id

      t.timestamps null: false
    end
    add_index :project_images, :project_id
  end
end
