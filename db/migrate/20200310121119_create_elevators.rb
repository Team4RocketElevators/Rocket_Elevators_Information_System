class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|

      # t.references :column, foreign_key: true

      # t.integer :ColumnId
      t.string :SerialNumber
      t.string :Model
      t.string :Type
      t.string :Status
      t.date :DateOfcommisioning
      t.date :DateOfLastInspection
      t.text :CertificateOfOperations
      t.text :Information
      t.text :Notes

      t.timestamps null: false
    end
  end
end
