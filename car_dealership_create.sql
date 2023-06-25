select * from salesperson 
create table Salesperson (
  salesperson_id INTEGER primary key,
  salesperson_name VARCHAR(150),
  salesperson_email VARCHAR(150)
);
select * from customer 
create table Customer (
 customer_id INTEGER primary key,
 customer_name VARCHAR(150),
 customer_email VARCHAR(150)
);

select * from car 
create table Car (
 car_serial VARCHAR(100) primary key,
 car_make VARCHAR(100),
 car_model VARCHAR(100),
 car_year INTEGER,
 car_price DECIMAL(10,2)
);

select * from Mechanic
create table Mechanic (
 mechanic_id INTEGER primary key,
 mechanic_name VARCHAR(150)
);

select * from invoice
create table Invoice (
 invoice_id INTEGER primary key,
 invoice_date DATE,
 invoice_time TIME,
 customer_id INTEGER,
 salesperson_id INTEGER,
 car_serial VARCHAR(100),
 foreign key (customer_id) references Customer(customer_id),
 foreign key (salesperson_id) references Salesperson(salesperson_id),
 foreign key (car_serial) references Car(car_serial)
);


select * from service_ticket
create table service_ticket (
 ticket_id INTEGER primary key,
 service_date DATE,
 service_time TIME,
 car_serial VARCHAR(100),
 customer_id INTEGER,
 mechanic_id INTEGER,
 foreign key (car_serial) references Car(car_serial),
 foreign key (customer_id) references Customer(customer_id),
 foreign key (mechanic_id) references Mechanic(mechanic_id)
);

create table Service (
 service_id INTEGER primary key,
 service_name VARCHAR(100),
 parts_fee DECIMAL(10,2),
 labor_fee DECIMAL(10,2),
 price_total DECIMAL(10,2),
 ticket_id INTEGER,
 foreign key (ticket_id) references service_ticket (ticket_id)
);