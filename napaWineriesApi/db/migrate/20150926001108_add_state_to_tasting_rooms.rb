class AddStateToTastingRooms < ActiveRecord::Migration
  def change
    add_column :tasting_rooms, :state, :string
  end
end
