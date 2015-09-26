class AddWineryIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :winery_id, :integer
  end
end
