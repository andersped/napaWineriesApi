class CreateAppelations < ActiveRecord::Migration
  def change
    create_table :appelations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
