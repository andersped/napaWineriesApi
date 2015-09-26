class AddAppelationIdToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :appelation_id, :integer
  end
end
