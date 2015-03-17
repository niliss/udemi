class OwnerToOwnerId < ActiveRecord::Migration
  def change
  	add_column :courses, :owner_id, :integer
  	remove_column :courses, :owner, :string
  end
end
