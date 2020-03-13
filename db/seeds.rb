# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.create!(first_name: 'Nicolas', last_name:'Genest', title:'Comm Rep', email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Nadya', last_name:'Fortier', title:'Director', email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Martin', last_name:'Chantal', title:'Director Assistant', email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Mathieu', last_name:'Houde', title:'Captain', email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Remi', last_name:'Gagnon', title:'Engineer', email: 'remi.gagnon@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Mathieu', last_name:'Lefrançois', title:'Engineer', email: 'mathieu.lefrancois@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Serge', last_name:'Savoie', title:'Engineer', email: 'serge.savoie@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'David', last_name:'Boutin', title:'Engineer', email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Mathieu', last_name:'Lortie', title:'Engineer', email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
Employee.create!(first_name: 'Thomas', last_name:'Carrier', title:'Engineer', email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
User.create!(email: 'xxx@zzz.yyy', password: 'password', password_confirmation: 'password', ) if Rails.env.development?
User.create!(email: 'aaa@bbb.ccc', password: 'password', password_confirmation: 'password', ) if Rails.env.development?

10.times do 
    Lead.create!({
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
    })

    # end

    # 1.times do
    #     User.create([{
    #         email: Faker::Internet.unique.email,
    #     }])
    #     end

    # 1.times do
    current_address = Address.create!({
        TypeOfAddress: [:Billing, :Shipping, :Home, :Business].sample,
        Status: [:Active, :Inactive].sample,
        Entity: [:Building, :Customer].sample,
        NumberAndStreet: Faker::Address.unique.secondary_address,
        SuiteOrAppartment: Faker::Number.unique.number(digits: 2),
        City: Faker::Address.city,
        PostalCode: Faker::Address.unique.postcode,
        Country: Faker::Address.unique.country,
        Notes: 'Note'
    })
#     end

# 1.times do
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
#     end

# 1.times do
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
# end


    # 1.times do
    BuildingDetail.create({
        building_id: current_building.id,
        Key: ::Faker::Lorem.unique.word, 
        Value: :: Faker::Lorem.unique.word
    })
    #     end

# 1.times do
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
#     end

# 1.times do
current_column = Column.create!({
        batteri_id: current_battery.id,
        # BatteryId: Batteri.last.id,
        Type: [:Residential, :Commercial, :Corporate, :Hybrid].sample,
        NumberOfFloors: Faker::Number.number(digits: 2),
        Status: [:Active, :Intervention, :Inactive].sample,
        Information: Faker::Lorem.sentence,
        Notes: Faker::Lorem.unique.paragraph
    })
#     end
    

# 1.times do
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
puts('seeed ended')