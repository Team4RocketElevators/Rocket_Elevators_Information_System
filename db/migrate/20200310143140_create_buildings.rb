class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|

      t.references :customer, foreign_key: true
      t.references :address, foreign_key: true

      # t.integer :CustomerId 
      # t.string :BuildingAddress
      t.string :AdministratorFullName
      t.string :AdministratorEMail
      t.integer :AdministratorPhoneNumber
      t.string :TechnicalContactFullName
      t.string :TechnicalContactEMail
      t.integer :TechnicalContactPhoneNumber

      t.timestamps null: false
    end
  end
end