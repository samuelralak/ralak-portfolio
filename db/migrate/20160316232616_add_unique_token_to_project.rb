class AddUniqueTokenToProject < ActiveRecord::Migration
  def change
    add_column :projects, :unique_token, :string
    add_index :projects, :unique_token, unique: true
  end
end
