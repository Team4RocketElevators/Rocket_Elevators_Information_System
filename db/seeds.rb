# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times do 
    Lead.create([{
        FullNameOfTheContact: Faker::Name.unique.name,
        CompanyName: Faker::Company.unique.name,
        EMail: Faker::Internet.unique.email,
        Phone: Faker::PhoneNumber.unique.phone_number,
        ProjectName: Faker::Lorem.unique.sentence(word_count: 2),
        ProjecDescription: Faker::Lorem.unique.sentence,
        DepartmentInChargeOfTheElevators: Faker::Commerce.unique.department,
        Message: Faker::Lorem.unique.paragraph,
        AttachedFile: Faker::File.unique.file_name,
        DateOfTheContactRequest: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now)
    }])

    end

1.times do
    Address.create([{
        TypeOfAddress: [:Billing, :Shipping, :Home, :Business].sample,
        Status: [:Active, :Inactive].sample,
        Entity: [:Building, :Customer].sample,
        NumberAndStreet: Faker::Address.unique.secondary_address,
        SuiteOrAppartment: Faker::Number.unique.number(digits: 2),
        City: Faker::Address.unique.city_prefix,
        PostalCode: Faker::Address.unique.postcode,
        Country: Faker::Address.unique.country,
        Notes: Faker::Lorem.unique.paragraph 
    }])
    end

1.times do
    Customer.create([{
        CustomerCreationDate: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
        CompanyName: Faker::Company.unique.name,
        CompanyHeadquarterAddress: Faker::Address.unique.full_address,
        FullNameOfTheCompanyContact: Faker::Name.unique.name,
        CompanyContactPhone: Faker::PhoneNumber.unique.phone_number,
        CompanyContactEmail: Faker::Internet.unique.email,
        CompanyDescription: Faker::Lorem.unique.paragraph,
        TechnicalAuthorityFullName: Faker::Name.unique.name,
        TechnicalAuthorityPhoneNumber: Faker::PhoneNumber.unique.phone_number,
        TechnicalAuthorityEmail: Faker::Internet.unique.email
    }])
    end

1.times do
    Building.create([{
        CustomerId:
        BuildingAddress:
        AdministratorFullName: Faker::Name.unique.name,
        AdministratorEMail:
        AdministratorPhoneNumber:
        TechnicalContactFullName: Faker::Name.unique.name,
        TechnicalContactEMail:
        TechnicalContactPhoneNumber:
    }])
    end

1.times do 
    building_details.create([{
        BuildingId:
        Key:
        Value:
    }])
    end

1.times do
    Batteri.create([{
      BuildingId:
      Type: [:Residential, :Commercial, :Corporate, :Hybrid].sample,
      Status: [:Active, :intervation, :Inactive].sample,
      EmployeeId:
      DateOfCommissioning: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
      DateOfLastInspection: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
      CertificateOfOperations: Faker::File.unique.file_name,
      Information: Faker::Lorem.unique.paragraph,
      Notes: Faker::Lorem.unique.paragraph 
    }])
    end

1.times do
    Column.create([{
        BatteryId:
        Type: [:Residential, :Commercial, :Corporate, :Hybrid].sample,
        NumberOfFloors: Faker::Number.number(digits: 2),
        Status: [:Active, :Intervention, :Inactive].sample,
        Information: ProjecDescription: Faker::Lorem.sentence,
        Notes: Faker::Lorem.unique.paragraph
    }])
    end
    

1.times do
    Elevator.create([{
        # ColumnId
        SerialNumber: Faker::Device.unique.serial,
        Model: [:Standard, :Premium, :Excelium].sample,
        Type: [:Residential, :Commercial, :Corporate].sample,
        Status: [:Active, :Intervention, :Inactive].sample,
        DateOfcommisioning: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
        DateOfLastInspection: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
        CertificateOfOperations: Faker::File.unique.file_name,
        Information: ProjecDescription: Faker::Lorem.sentence,
        Notes: Faker::Lorem.unique.paragraph
    }])
    end