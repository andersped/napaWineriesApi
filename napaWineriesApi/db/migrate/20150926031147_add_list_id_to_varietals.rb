class AddListIdToVarietals < ActiveRecord::Migration
  def change
    add_column :varietals, :list_id, :integer
  end
end
