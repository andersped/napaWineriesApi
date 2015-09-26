class AddTypeIdToVarietals < ActiveRecord::Migration
  def change
    add_column :varietals, :type_id, :integer
  end
end
