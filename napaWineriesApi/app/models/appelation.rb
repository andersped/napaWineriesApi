class Appelation < ActiveRecord::Base
	belongs_to :lists
	has_many :regions
end
