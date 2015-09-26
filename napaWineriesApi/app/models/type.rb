class Type < ActiveRecord::Base
	belongs_to :lists
	has_many :varietals
end
