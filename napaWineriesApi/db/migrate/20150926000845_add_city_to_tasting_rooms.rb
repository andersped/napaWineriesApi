class AddCityToTastingRooms < ActiveRecord::Migration
  def change
    add_column :tasting_rooms, :city, :string
  end
end
