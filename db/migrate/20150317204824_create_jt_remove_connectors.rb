class CreateJtRemoveConnectors < ActiveRecord::Migration
  def change
    create_join_table :courses, :users
    drop_table :connectors
    
  end
end
