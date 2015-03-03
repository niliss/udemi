class Course < ActiveRecord::Base
	has_many :connectors
    has_many :users, through: :connectors
end
