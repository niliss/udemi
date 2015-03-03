class CreateConnectors < ActiveRecord::Migration
  def change
    create_table :connectors do |t|
      		
      t.timestamps null: false
    end
  end
end
