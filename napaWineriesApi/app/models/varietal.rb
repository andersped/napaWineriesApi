class Varietal < ActiveRecord::Base
	has_many :lists, through: :offerings
	has_many :offerings, dependent: :destroy
end
