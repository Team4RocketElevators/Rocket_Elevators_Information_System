# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_06_191828) do

  create_table "forms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "building"
    t.integer "appartmentsNbrRES"
    t.integer "floorsNbrRES"
    t.integer "floorsNbrCOM"
    t.integer "floorsNbrCOR"
    t.integer "basementsNbrRES"
    t.integer "basementsNbrCOM"
    t.integer "basementsNbrCOR"
    t.integer "seperateBusinessesNbrCOM"
    t.integer "parkingsNbrCOM"
    t.integer "parkingsNbrCOR"
    t.integer "elevatorsNbrCOM"
    t.integer "seperateRentalCompaniesNbrCOR"
    t.integer "occupantsPerFloorCOR"
    t.integer "occupantsPerFloor"
    t.integer "nbrFloors"
    t.integer "nbrBasements"
    t.integer "availableParkingSpaces"
    t.integer "seperateBusinesses"
    t.time "busyHours"
    t.integer "recommendedShafts"
    t.string "quality"
    t.text "priceUnit"
    t.text "costInstallations"
    t.text "costTotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
