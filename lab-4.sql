CREATE database Information;

use Information;

CREATE table owner(

	o_id int PRIMARY KEY,
    o_name varchar(50),
    o_phone varchar(20),
    o_mail varchar(30),
    o_adrs varchar(50)
);

CREATE table employee(
    o_id int,
    e_id int PRIMARY KEY,
    e_name varchar(50),
    e_phone varchar(20),
    e_mail varchar(30),
    e_adrs varchar(50),
    j_date date
);


INSERT INTO owner
(o_id, o_name, o_phone, o_mail, o_adrs)
VALUES
(1, "Borna", "017", "081@gmail.com", "Sylhet"),
(2, "Yasin", "017", "095@gmail.com", "Sylhet"),
(3, "Mustafiz", "017", "090@gmail.com", "Sylhet"),
(4, "Sabbir", "017", "100@gmail.com", "Sylhet");


INSERT INTO employee
(o_id, e_id, e_name, e_phone, e_mail, e_adrs, J_date)
VALUES
(4,1, "Borna", "017", "081@gmail.com", "Sylhet", "2024-01-31"),
(3,2, "Yasin", "017", "095@gmail.com", "Sylhet", "2023-01-31"),
(2,3, "Mustafiz", "017", "090@gmail.com", "Sylhet", "2022-01-31"),
(1,4, "Sabbir", "017", "100@gmail.com", "Sylhet", "2021-01-31");

SELECT * from owner, employee;

SELECT e_name from employee where e_id=1 AND e_adrs='Sylhet';

SELECT e_name, e_phone from employee where j_date BETWEEN "2020-01-31" AND "2025-01-31";

SELECT e_phone from employee where NOT e_adrs=' not Dhaka';

SELECT e_name from owner, employee where owner.o_id=employee.o_id;

SELECT DISTINCT e_adrs from employee;

SELECT o_name from owner as O, employee as E where O.o_id=E.e_id;

SELECT O.o_id, o_name from owner as O,employee as E where O.o_id=E.o_id;
