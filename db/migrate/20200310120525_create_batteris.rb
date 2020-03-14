class CreateBatteris < ActiveRecord::Migration[5.2]
  def change
    create_table :batteris do |t|

      # t.references :building, foreign_key: true
      

      # t.integer :BuildingId
      t.string :Type
      t.string :Status
      t.references :employee, foreign_key: true
      # t.integer :EmployeeId
      t.date :DateOfCommissioning
      t.date :DateOfLastInspection
      t.text :CertificateOfOperations
      t.text :Information
      t.text :Notes

      t.timestamps null: false
    end
  end
end
