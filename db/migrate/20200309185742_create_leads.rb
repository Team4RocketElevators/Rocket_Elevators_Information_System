class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :FullNameOfTheContact
      t.string :CompanyName
      t.string :Email
      t.integer :Phone
      t.string :ProjectName
      t.text :ProjecDescription
      t.string :DepartmentInChargeOfTheElevators
      t.text :Message
      t.text :AttachedFile
      t.date :DateOfTheContactRequest

      t.timestamps null: false
    end
  end
end
