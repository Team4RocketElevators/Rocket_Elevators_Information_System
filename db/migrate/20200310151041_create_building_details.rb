class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change

    create_table :building_details do |t|
      t.references :buildings, foreign_key: true

      t.string :Key
      t.string :Value

      t.timestamps null: false
    end
  end
end
