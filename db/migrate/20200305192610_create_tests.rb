class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :building
      t.integer :appartmentsNbr
      t.integer :floorsNbr
      t.integer :basementsNbr
      t.integer :seperateBusinessesNbr
      t.integer :parkingsNbr
      t.integer :elevatorsNbr
      t.integer :seperateRentalCompaniesNbr
      t.integer :occupantsPerFloor
      t.integer :nbrFloors
      t.integer :nbrBasements
      t.integer :availableParkingSpaces
      t.integer :seperateBusinesses
      t.time :busyHours
      t.integer :recommendedShafts
      t.string :quality
      t.text :priceUnit
      t.text :costInstallations
      t.text :costTotal

      t.timestamps null: false
    end
    end
  end
end
