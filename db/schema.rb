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

ActiveRecord::Schema.define(version: 2020_03_11_143222) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "TypeOfAddress"
    t.string "Status"
    t.string "Entity"
    t.string "NumberAndStreet"
    t.string "SuiteOrAppartment"
    t.string "City"
    t.string "PostalCode"
    t.string "Country"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteris", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "BuildingId"
    t.string "Type"
    t.string "Status"
    t.integer "EmployeeId"
    t.date "DateOfCommissioning"
    t.date "DateOfLastInspection"
    t.text "CertificateOfOperations"
    t.text "Information"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "BuildingId"
    t.string "Key"
    t.string "Value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "CustomerId"
    t.string "BuildingAddress"
    t.string "AdministratorFullName"
    t.string "AdministratorEMail"
    t.integer "AdministratorPhoneNumber"
    t.string "TechnicalContactFullName"
    t.string "TechnicalContactEMail"
    t.integer "TechnicalContactPhoneNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "batteri_id"
    t.string "Type"
    t.integer "NumberOfFloors"
    t.string "Status"
    t.text "Information"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batteri_id"], name: "index_columns_on_batteri_id"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "UserId"
    t.date "CustomerCreationDate"
    t.string "CompanyName"
    t.string "CompanyHeadquarterAddress"
    t.string "FullNameOfTheCompanyContact"
    t.integer "CompanyContactPhone"
    t.string "CompanyContactEmail"
    t.text "CompanyDescription"
    t.string "TechnicalAuthorityFullName"
    t.integer "TechnicalAuthorityPhoneNumber"
    t.string "TechnicalAuthorityEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "ColumnId"
    t.string "SerialNumber"
    t.string "Model"
    t.string "Type"
    t.string "Status"
    t.date "DateOfcommisioning"
    t.date "DateOfLastInspection"
    t.text "CertificateOfOperations"
    t.text "Information"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

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
    t.integer "busyHours"
    t.integer "recommendedShafts"
    t.string "quality"
    t.text "priceUnit"
    t.text "costInstallations"
    t.text "costTotal"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "FullNameOfTheContact"
    t.string "CompanyName"
    t.string "EMail"
    t.integer "Phone"
    t.string "ProjectName"
    t.text "ProjecDescription"
    t.string "DepartmentInChargeOfTheElevators"
    t.text "Message"
    t.text "AttachedFile"
    t.date "DateOfTheContactRequest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "column"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "columns", "batteris"
end
