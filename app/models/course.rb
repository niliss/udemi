class Course < ActiveRecord::Base
	has_and_belongs_to_many :users
    validates :name, presence: true
    belongs_to :owner,  class_name: "User"

end
