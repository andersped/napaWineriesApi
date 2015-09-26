class AddListIdToTastingRooms < ActiveRecord::Migration
  def change
    add_column :tasting_rooms, :list_id, :integer
  end
end
