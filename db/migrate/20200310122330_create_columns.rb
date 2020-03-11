class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.integer :BatteryId
      t.string :Type
      t.integer :NumberOfFloors
      t.string :Status
      t.text :Information
      t.text :Notes

      t.timestamps null: false
    end
  end
end
