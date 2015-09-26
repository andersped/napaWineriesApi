class CreateTastingRooms < ActiveRecord::Migration
  def change
    create_table :tasting_rooms do |t|
      t.string :address
      t.string :hours
      t.string :type

      t.timestamps null: false
    end
  end
end
