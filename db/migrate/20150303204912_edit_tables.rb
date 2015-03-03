class EditTables < ActiveRecord::Migration
  def change
  add_column :connectors, :name, :string
  end
end
