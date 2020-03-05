class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :buildingSelect

      t.timestamps
    end
  end
end
