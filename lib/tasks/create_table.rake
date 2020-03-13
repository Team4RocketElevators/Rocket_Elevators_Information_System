
task :new_task => :environment do
    Elevator.all.each do |e|
        # e.SerialNumber
        e.DateOfcommisioning
        # a = "insert into ....  #{e.id}"
        puts e
    end
end


# Create Tables in PostgreSQL & fetch data from MySQL insert into PostgreSQL
# desc 'Create Tables in PostgreSQL & fetch data from MySQL insert into PostgreSQL'
# task create_table_pg: :environment do

#     #conn = PG.connect("host=localhost port=5432 user=postgres password=poiu");

# # drop table     

# # doit se promener d'un foreign key a l'autre elevator.column.id.blablabla.destination
# # regarder pour WHERE    

# Elevator.each do |e|
#     e.id
#     a = "insert into ....  #{e.id}"
#     puts a
# end

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
    #         serial_number INT PRIMARY KEY,
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
    #   end


