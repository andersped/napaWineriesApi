class List < ActiveRecord::Base
	belongs_to :wineries
	has_many :appelations
	has_many :tasting_rooms
	has_many :varietals, through: :offerings
	has_many :offerings, dependent: :destroy
end
