class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects, id: :uuid do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
