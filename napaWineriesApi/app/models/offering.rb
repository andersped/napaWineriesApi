class Offering < ActiveRecord::Base
  belongs_to :varietal
  belongs_to :list
end
