--data insertion functions
create function add_car(_car_serial VARCHAR, _car_make VARCHAR, _car_model VARCHAR, _car_year INTEGER)
returns void
as $MAIN$
begin 
		insert into car(car_serial, car_make, car_model, car_year)
		values (_car_serial, _car_make, _car_model, _car_year);
end;
$MAIN$
language plpgsql;

select add_car('1','Jeep', 'Wrangler', 2017);
select add_car('2', 'Ford', 'Fusion', 2003);
select add_car('3', 'Honda', 'Civic', 2016);
select * from car;

drop function if exists add_car 

--manual data insertion example
insert into car(car_serial, car_make, car_model, car_year) values ('12', 'Porsche', 'Panamera', 2023);
insert into car(car_serial, car_make, car_model, car_year) values ('11', 'Buggati', 'Veyron', 2021);
insert into salesperson(salesperson_id, salesperson_name, salesperson_email) values (2, 'Joey Hunt', 'jhunt@gmail.com');
insert into salesperson(salesperson_id, salesperson_name, salesperson_email) values (1, 'Patrick Brandy', 'pbrandy@gmail.com');
insert into customer(customer_id, customer_name, customer_email) values (2, 'Amber Kelley', 'akelley@gmail.com');
insert into customer(customer_id, customer_name, customer_email) values (1, 'Tim Hanson', 'thanson@gmail.com');
insert into mechanic(mechanic_id, mechanic_name) values (10, 'Big Bob');
insert into mechanic(mechanic_id, mechanic_name) values (15, 'Larry King');
insert into invoice(invoice_id, customer_id, salesperson_id, car_serial) values(1, 2, 1, 3);
insert into invoice(invoice_id, customer_id, salesperson_id, car_serial) values(2, 1, 2, 1);
insert into service_ticket(ticket_id, car_serial, customer_id, mechanic_id) values(24, 3, 2, 10);
insert into service_ticket(ticket_id, car_serial, customer_id, mechanic_id) values(5, 2, 1, 15);
insert into service(service_id, service_name, labor_fee, price_total, ticket_id) values(1, 'Tire Rotation', 25.00, 25.00, 5);
insert into service(service_id, service_name, labor_fee, price_total, ticket_id) values(2, 'Replacemnet Brakes', 25.00, 75.00, 24);

