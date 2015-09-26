class AddListIdToAppelations < ActiveRecord::Migration
  def change
    add_column :appelations, :list_id, :integer
  end
end
