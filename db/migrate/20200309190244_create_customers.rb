class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :UserId
      t.date :CustomerCreationDate
      t.string :CompanyName
      t.string :CompanyHeadquarterAddress
      t.string :FullNameOfTheCompanyContact
      t.integer :CompanyContactPhone
      t.string :CompanyContactEmail
      t.text :CompanyDescription
      t.string :TechnicalAuthorityFullName
      t.integer :TechnicalAuthorityPhoneNumber
      t.string :TechnicalAuthorityEmail

      t.timestamps null: false
    end
  end
end
