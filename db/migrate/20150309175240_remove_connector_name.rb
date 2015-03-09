class RemoveConnectorName < ActiveRecord::Migration
  def change
  	remove_column :connectors, :name
  end
end
