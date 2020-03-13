# task :fact_quotes => :environment do
#     form.all.each do |f|
#         f.id
#         f.updated_at
#         f.company_name
#         f.email
#         f.recommendedShafts
#         # conn.exec("INSERT INTO \"fact\" #{e.id}")
#         puts 
#     end
# end

# task :fact_elevator => :environment do
#     Elevator.all.each do |e|
#         e.SerialNumber
#         e.DateOfcommissioning
#         e.column.batteri.building.id
#         e.column.batteri.building.customer_id
#         e.column.batteri.building.address.City
#         conn = PG.connect("host=localhost port=5432 user=postgres password=poiu");
#         conn.exec("INSERT INTO \"fact_elevator\" (serial_number, date_of_commissioning, building_id, customer_id, building_city) VALUES ('#{e.SerialNumber}', '#{e.DateOfcommissioning}', '#{e.column.batteri.building.id}', '#{e.column.batteri.building.customer_id}', '#{e.column.batteri.building.address.City}')")
#         # puts e.SerialNumber, e.DateOfcommissioning, e.column.batteri.building.id, e.column.batteri.building.customer_id, e.column.batteri.building.address.City
#     end
# end

# task :fact_dim => :environment do
#     Customer.all.each do |c|
#         c.CustomerCreationDate
#         c.CompanyName
#         c.FullNameOfTheCompanyContact
#         # c.nb_Elevator
#         # c.customer_city

#         # conn.exec("INSERT INTO \"fact\" #{e.id}")
#         puts c.CustomerCreationDate, c.CompanyName, c.FullNameOfTheCompanyContact
#     end
# end

# task :fact_contact => :environment do
#     Lead.all.each do |l|
#         l.id
#         # conn.exec("INSERT INTO \"fact\" #{e.id}")
#         puts 
#     end
# end



# # Create Tables in PostgreSQL & fetch data from MySQL insert into PostgreSQL
# desc 'Create Tables in PostgreSQL & fetch data from MySQL insert into PostgreSQL'
# task create_table_pg: :environment do
# conn = PG.connect("host=localhost port=5432 user=postgres password=poiu");

# # table truncate (RESTART IDENTITY)

# # doit se promener d'un foreign key a l'autre elevator.column.id.blablabla.destination
# # regarder pour WHERE    
# conn.exec("
#     CREATE TABLE fact_quotes(
#         quote_id INT PRIMARY KEY,
#         creation DATE UNIQUE NOT NULL,
#         company_name VARCHAR(255) NOT NULL,
#         email VARCHAR(255) UNIQUE NOT NULL,
#         nb_elevators INT NOT NULL
#     );
#     CREATE TABLE fact_contact(
#         contact_id INT PRIMARY KEY,
#         creation DATE UNIQUE NOT NULL,
#         company_name VARCHAR(255) NOT NULL,
#         email VARCHAR(255) UNIQUE NOT NULL,
#         project_name VARCHAR(255) NOT NULL
#     );
#     CREATE TABLE fact_elevator(
#         serial_number VARCHAR(255) PRIMARY KEY,
#         date_of_commissioning DATE UNIQUE NOT NULL,
#         building_id INT NOT NULL,
#         customer_id INT UNIQUE NOT NULL,
#         building_city VARCHAR(255) NOT NULL
#     );
#     CREATE TABLE dim_customers(
#         creation DATE UNIQUE NOT NULL,
#         company_name VARCHAR(255) NOT NULL,
#         full_name_of_the_company_main_contact VARCHAR(255) NOT NULL,
#         nb_elevators INT NOT NULL,
#         customer_city VARCHAR(255) NOT NULL
#     );
#     ")
# end

    




