class AddZipcodeToTastingRooms < ActiveRecord::Migration
  def change
    add_column :tasting_rooms, :zipcode, :integer
  end
end
