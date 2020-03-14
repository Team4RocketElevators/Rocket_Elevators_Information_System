# frozen_string_literal: true

class DeviseCreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :company_name
      t.string :email
      t.string :building
      t.integer :appartmentsNbrRES
      t.integer :floorsNbrRES
      t.integer :floorsNbrCOM
      t.integer :floorsNbrCOR
      t.integer :basementsNbrRES
      t.integer :basementsNbrCOM
      t.integer :basementsNbrCOR
      t.integer :seperateBusinessesNbrCOM
      t.integer :parkingsNbrCOM
      t.integer :parkingsNbrCOR
      t.integer :elevatorsNbrCOM
      t.integer :seperateRentalCompaniesNbrCOR
      t.integer :occupantsPerFloorCOR
      t.integer :occupantsPerFloor
      t.integer :nbrFloors
      t.integer :nbrBasements
      t.integer :availableParkingSpaces
      t.integer :seperateBusinesses
      t.integer :busyHours
      t.integer :recommendedShafts
      t.string :quality
      t.text :priceUnit
      t.text :costInstallations
      t.text :costTotal
      t.string :name, :default => "Form #"

      t.timestamps null: false
    end
  end
end
