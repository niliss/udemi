class EditConnector < ActiveRecord::Migration
  def change
  	 add_column :connectors, :course_id, :integer
  	 add_column :connectors, :user_id, :integer
  end
end
