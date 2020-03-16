# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create!(first_name: 'Nicolas', last_name:'Genest', title:'Comm Rep', email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Nadya', last_name:'Fortier', title:'Director', email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Martin', last_name:'Chantal', title:'Director Assistant', email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Mathieu', last_name:'Houde', title:'Captain', email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Remi', last_name:'Gagnon', title:'Engineer', email: 'remi.gagnon@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Mathieu', last_name:'Lefrançois', title:'Engineer', email: 'mathieu.lefrancois@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Serge', last_name:'Savoie', title:'Engineer', email: 'serge.savoie@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'David', last_name:'Boutin', title:'Engineer', email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Mathieu', last_name:'Lortie', title:'Engineer', email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 
Employee.create!(first_name: 'Thomas', last_name:'Carrier', title:'Engineer', email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password', ) 

50.times do 
    User.create!({
        email: Faker::Internet.unique.email, 
        password: 'password',
        password_confirmation: 'password'
    }) 

    Lead.create!({
        FullNameOfTheContact: Faker::Name.unique.name,
        CompanyName: Faker::Company.unique.name,
        Email: Faker::Internet.unique.email,
        Phone: Faker::PhoneNumber.unique.phone_number,
        ProjectName: Faker::Lorem.unique.sentence(word_count: 2),
        ProjecDescription: Faker::Lorem.unique.sentence,
        DepartmentInChargeOfTheElevators: Faker::Commerce.unique.department,
        Message: Faker::Lorem.unique.paragraph,
        AttachedFile: Faker::File.unique.file_name,
        DateOfTheContactRequest: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now)
    })


    Form.create!({
        company_name: Faker::Company.name,
        email: Faker::Internet.email,
        building: [:Residential, :Commercial, :Corporate, :Hybrid].sample,
        appartmentsNbrRES: Faker::Number.between(from: 10, to: 150),
        floorsNbrRES: Faker::Number.between(from: 5, to: 80),
        floorsNbrCOM: Faker::Number.between(from: 10, to: 100),
        floorsNbrCOR: Faker::Number.between(from: 10, to: 100),
        basementsNbrRES: Faker::Number.between(from: 2, to: 5),
        basementsNbrCOM: Faker::Number.between(from: 3, to: 10),
        basementsNbrCOR: Faker::Number.between(from: 3, to: 10),
        seperateBusinessesNbrCOM: Faker::Number.between(from: 10, to: 50),
        parkingsNbrCOM: Faker::Number.between(from: 50, to: 250),
        parkingsNbrCOR: Faker::Number.between(from: 50, to: 250),
        elevatorsNbrCOM: Faker::Number.between(from: 4, to: 20),
        seperateRentalCompaniesNbrCOR: Faker::Number.between(from: 5, to: 10),
        occupantsPerFloorCOR: Faker::Number.between(from: 20, to: 150),
        occupantsPerFloor: Faker::Number.between(from: 20, to: 150),
        nbrFloors: Faker::Number.between(from: 5, to: 100),
        nbrBasements: Faker::Number.between(from: 3, to: 10),
        availableParkingSpaces: Faker::Number.between(from: 10, to: 150),
        seperateBusinesses: Faker::Number.between(from: 10, to: 50),
        busyHours: Faker::Number.between(from: 8, to: 24),
        recommendedShafts: Faker::Number.between(from: 1, to: 10),
        quality: [:Standard, :Premium, :Excelium].sample,
        priceUnit: Faker::Number.between(from: 100000, to: 1000000),
        costInstallations: Faker::Number.between(from: 5000, to: 50000),
        costTotal: Faker::Number.between(from: 100000, to: 1500000),
        name: Faker::Name.unique.name
    })

    current_address = Address.create!({
        TypeOfAddress: [:Billing, :Shipping, :Home, :Business].sample,
        Status: [:Active, :Inactive].sample,
        Entity: [:Building, :Customer].sample,
        NumberAndStreet: Faker::Address.unique.secondary_address,
        SuiteOrAppartment: Faker::Number.unique.number(digits: 2),
        City: Faker::Address.city,
        PostalCode: Faker::Address.unique.postcode,
        Country: [:Canada, :United_States, :Mexico].sample,
        Notes: 'Note'
    })

    current_customer = Customer.create!({
        users_id: User.order('rand()').limit(1).first.id,
        address_id: current_address.id,
        CustomerCreationDate: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
        CompanyName: Faker::Company.unique.name,
        # CompanyHeadquarterAddress: Address.last.id,
        FullNameOfTheCompanyContact: Faker::Name.unique.name,
        CompanyContactPhone: Faker::PhoneNumber.unique.phone_number,
        CompanyContactEmail: Faker::Internet.unique.email,
        CompanyDescription: Faker::Lorem.unique.paragraph,
        TechnicalAuthorityFullName: Faker::Name.unique.name,
        TechnicalAuthorityPhoneNumber: Faker::PhoneNumber.unique.phone_number,
        TechnicalAuthorityEmail: Faker::Internet.unique.email
    })

    current_building = Building.create!({
        customer_id: current_customer.id,
        address_id: current_address.id,
        # CustomerId: Customer.last.id,
        # BuildingAddress: Address.last.id,
        AdministratorFullName: Faker::Name.unique.name,
        AdministratorEMail: Faker::Internet.unique.email,
        AdministratorPhoneNumber: Faker::PhoneNumber.unique.phone_number,
        TechnicalContactFullName: Faker::Name.unique.name,
        TechnicalContactEMail: Faker::Internet.unique.email,
        TechnicalContactPhoneNumber: Faker::PhoneNumber.unique.phone_number,
    })

    BuildingDetail.create({
        building_id: current_building.id,
        Key: ::Faker::Lorem.unique.word, 
        Value: :: Faker::Lorem.unique.word
    })

    current_battery = Batteri.create!({
        building_id: current_building.id, 
        # BuildingId: Building.last.id,
        Type: [:Residential, :Commercial, :Corporate, :Hybrid].sample,
        Status: [:Active, :intervation, :Inactive].sample,
        employee_id: Employee.order('rand()').limit(1).first.id,
        DateOfCommissioning: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
        DateOfLastInspection: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
        CertificateOfOperations: Faker::File.file_name,
        Information: 'Information',
        Notes: 'Note'
    })
    2.times do
        current_column = Column.create!({
            batteri_id: current_battery.id,
            # BatteryId: Batteri.last.id,
            Type: [:Residential, :Commercial, :Corporate, :Hybrid].sample,
            NumberOfFloors: Faker::Number.number(digits: 2),
            Status: [:Active, :Intervention, :Inactive].sample,
            Information: Faker::Lorem.sentence,
            Notes: Faker::Lorem.unique.paragraph
        })

        2.times do
            Elevator.create!({
                column_id: current_column.id,
                # ColumnId: Column.last.id,
                SerialNumber: Faker::Number.number(digits: 6),
                Model: [:Standard, :Premium, :Excelium].sample,
                Type: [:Residential, :Commercial, :Corporate].sample,
                Status: [:Active, :Intervention, :Inactive].sample,
                DateOfcommissioning: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
                DateOfLastInspection: Faker::Time.between(from: DateTime.now - 1095, to: DateTime.now),
                CertificateOfOperations: Faker::File.unique.file_name,
                Information: Faker::Lorem.sentence,
                Notes: Faker::Lorem.paragraph
            })
        end
    end
end
puts('seed ended')
