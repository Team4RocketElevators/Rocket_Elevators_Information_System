class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.references :batteris, foreign_key: true

      t.string :Type
      t.integer :NumberOfFloors
      t.string :Status
      t.text :Information
      t.text :Notes

      t.timestamps null: false
    end
  end
end