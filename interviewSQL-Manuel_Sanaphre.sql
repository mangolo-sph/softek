
create table person (
  person_id INT NOT NULL PRIMARY key,
  first_name varchar(100),
  preferred_first_name  VARCHAR(100),
  last_name VARCHAR(100) NOT NULL,
  date_of_birth DATE,
  hire_date DATE,
  occupation VARCHAR(1)
  );

create table address (
  address_id INT NOT NULL PRIMARY key,
  person_id int FOREIGN KEY REFERENCES person(person_id),
  address_type varchar(4) not null,
  street_line_1 VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  zip_code VARCHAR(30)
  );

Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (1,'angel manuel','manuel','sanaphre rodriguez','19390523 00:00:00','20201215 00:00:00','A');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (2,'juan',null,'perez','19790523 00:00:00','20151015 00:00:00','A');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (3,'mariana patricia','Paty','rodriguez vega','19990312 00:00:00','20201215 00:00:00','B');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (4,'Rufino',null,'sanchez','19890102 00:00:00','20201215 00:00:00','B');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (5,'roganciano agapito','agapito','sabines','19991031 00:00:00','20201215 00:00:00','A');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (6,'raymundo',null,'garcia','19840619 00:00:00','20151215 00:00:00','C');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (7,'Miloberto','milo','sva','20050703 00:00:00','20171015 00:00:00','C');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (8,'Rupperto Alberto','Rupperto','Gomez','19980327 00:00:00','20201215 00:00:00','B');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (9,'Valentina Ramona','Ramona','trejo','20000605 00:00:00','20190427 00:00:00','B');
Insert into person (person_id, first_name,preferred_first_name,last_name,date_of_birth,hire_date,occupation) 
			values (10,'Maria Fernanda','Fernanda','Tamez','20030522 00:00:00','20180101 00:00:00','A');
            
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (1,1,'HOME','alaska 22','Queretaro','Qro','76160');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (2,2,'BBILL','vermon 134','Queretaro','Qro','76165');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (3,3,'HOME','ratas peludas 1','Queretaro','Qro','76333');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (4,4,'HOME','robles 15','Queretaro','Qro','76254');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (5,5,'HOME','biciletas coloridas 33','Queretaro','Qro','78963');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (6,6,'BILL','el sol 43','Queretaro','Qro','76169');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (7,7,'BILL','virreyes 42','Queretaro','Qro','76555');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (8,8,'BBILL','las lomas 123','Queretaro','Qro','76789');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (9,9,'HOME','satelite 987','Queretaro','Qro','76253');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (10,10,'HOME','los laureles verdes 75','Queretaro','Qro','76980');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (11,1,'BILL','alaska 22','Queretaro','Qro','76160');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (12,9,'BILL','Jupiter 432','Queretaro','Qro','76165');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (13,3,'BILL','cascarones marchitos 99','Queretaro','Qro','76333');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (14,4,'BILL','robledos grandes 51','Queretaro','Qro','76254');
insert into address (address_id,person_id,address_type,street_line_1,city,state,zip_code) 
			values (15,5,'BILL','las cruces coloridas 77','Queretaro','Qro','78963');
            

--excersise 1:****************

select person_id, 
	   CASE 
       		WHEN preferred_first_name is not null THEN preferred_first_name 
            ELSE first_name END as reporting_name, 
       last_name, 
       date_of_birth, 
       hire_date,
       occupation
From person;


--excersise 2:****************

select * from person where occupation is null;


--excersise 3:****************

select * from person where date_of_birth < '19900807 00:00:00'


--excersise 4:****************

select * from person WHERE datediff(day,hire_date, sysdatetime())<=100


--excersise 5:****************

select p.*, a.address_type
FROM person p INNER JOIN address a 
	 ON (p.person_id=a.person_id)
where a.address_type='HOME'


--excersise 6:****************

select p.*, 
	   CASE 
       		WHEN a.address_type='BILL' THEN a.address_type
            ELSE 'NONE'
       END as Address_type
FROM person p LEFT JOIN address a 
	 ON (p.person_id=a.person_id)


--excersise 7:****************

select 
	address_type, 
    count(address_type) as count
from address
GROUP by address_type


--excersise 8:****************

Select * FROM
	(
		select p.last_name, a.street_line_1, a.address_type 
  		from person p Left join address a on (p.person_id=a.person_id)
  	) p
 	PIVOT (street_line_1 FOR address_type IN (
      						[BILL],
      						[HOME])
           ) as results;


--excersise 9:****************

update person
set occupation='X'
FROM person p inner join address a ON (p.person_id=a.person_id)
Where a.address_type='BILL'
