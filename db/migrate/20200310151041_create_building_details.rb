class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.integer :BuildingId
      t.string :Key
      t.string :Value

      t.timestamps null: false
    end
  end
end
