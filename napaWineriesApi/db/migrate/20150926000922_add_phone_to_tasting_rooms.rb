class AddPhoneToTastingRooms < ActiveRecord::Migration
  def change
    add_column :tasting_rooms, :phone, :string
  end
end
