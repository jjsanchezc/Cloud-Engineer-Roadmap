# SQL

## Database

`create database`:

```sql
create database <database_name>;
```

`show databases`:

```sql
show databases;
```

`CREATE TABLE`:

```sql
CREATE TABLE <table_name> (
	<attribute_id> <data_type>,
	<attribute> <data_type>,
	...
	<attribute_n> <data_type>,
	PRIMARY KEY (<attribute>)

);
```

`SHOW TABLE`:

```sql
SHOW TABLE <table_name>;
```

`ALTER TABLE`:

```sql
ALTER TABLE <table_name>
ALTER TABLE <table_name> MODIFY COLUMN <attribute> <data_type> <optinal>;
```

`DROP TABLE`:

```sql
DROP TABLE <table_name>
```
## Data manipulation

`INSERT INTO`:

```sql
INSERT INTO <table_name> (<column1>,...,<column2>) VALUES (<value1>,<value2>);
```

`SELECT`:

[basic query](#basic-query)

`UPDATE`:

```sql
UPDATE <table_name> SET <coulumn_to_update>=<new_value> where <logic>
```

`DELETE`:
```sql
DELETE FROM <table_name> WHERE <logic>;
```


## Data types
`int`: integer

`Float`: decimal

`varchar(x)`: text

## Basic query
```sql
SELECT <column_name> FROM <table>
SELECT <column_name_1>,...,<column_name_n> FROM <table>
SELECT * FROM <table>
```

`=`:

```sql
SELECT * FROM <table> WHERE <condition1> = <value>;
```

`AS`:

```sql
SELECT <column_name> AS <AKA> FROM <table>;
```

`BETWEEN`:

```sql
SELECT * FROM <table> WHERE <column_name> BETWEEN <value1> AND <value2>;
```

`COUNT`:

```sql
SELECT count(<column>) ;
```

`DISTINCT`:

```sql
-- not duplicated results
SELECT DISTINCT(<column_name>) ;
```

`HAVING`:
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
```sql
SELECT <column_name>
FROM <table_name>
WHERE <condition>
GROUP BY <column_name>
HAVING <condition>
ORDER BY <column_name>;
```

`IN`:

```sql
SELECT * FROM <table> WHERE <column_name> IN ('<value_1>', ..., '<value_n>');
```

`INNER JOIN` and `GROUP BY`:

```sql
SELECT <table2>.<column_name> 
FROM <table1> 
INNER JOIN <table2> ON <table1>.<PK or FK> = <table2>.<PK or FK> 
GROUP BY <table1>.<column_name>, <table2>.<column_name>;
```

`IS NULL / IS NOT NULL`:

```sql
SELECT * FROM <table> WHERE <condition1> IS NULL;  -- or "IS NOT NULL"
```

`LEFT`:

```sql
SELECT LEFT(<string>, <n>); -- Extracts the first n characters from the string
```

`LEFT JOIN`:
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).

```sql
SELECT <column_name>,...,<column_name n> FROM <table1> LEFT JOIN <table2> ON <table1>.<column_name>=<table2>.<column_name>
```

`LIKE`:

```sql
-- Search for a pattern in a text
SELECT * FROM <table> WHERE <column_name> LIKE <value>;

-- Find something that ends with a specific value
SELECT * FROM <table> WHERE <column_name> LIKE "%<value>";

-- Find something that starts with a specific value
SELECT * FROM <table> WHERE <column_name> LIKE "<value>%";
```
`max`:

```sql
select max(<column>) ...
```

`min`:

```sql
SELECT min(<column>) ...
```

`NOT IN`:
```sql
SELECT * FROM <table> WHERE <column_name> NOT IN (<list of values>)
```

`NOT LIKE`:

```sql
SELECT * FROM <table> WHERE <column_name> NOT LIKE "<value>"
```

`ORDER BY`:

```sql
SELECT * FROM <table> WHERE <condition> ORDER BY <column_name> ASC;  -- Ascending order
SELECT * FROM <table> WHERE <condition> ORDER BY <column_name> DESC;  -- Descending order

-- There could be different order by
SELECT * FROM <table> WHERE <condition> ORDER BY <column_name> DESC,<column_name2>ASC;
```

`ROUND`:

```sql
-- ROUND behavior:
-- If decimal_places is positive, it rounds to that many decimal places.
-- If decimal_places is zero or omitted, it rounds to the nearest integer.
-- If decimal_places is negative, it rounds to the left of the decimal point (to the nearest 10, 100, etc.).
SELECT ROUND(<number>, <decimal_places>);
```

`RIGHT JOIN`:
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.
```sql
SELECT <column_name>,...,<column_name n> FROM <table1> RIGHT JOIN <table2> ON <table1>.<column_name>=<table2>.<column_name>
```
`XOR` (Exclusive OR):

```sql
SELECT * FROM <table_name> WHERE <conditional_1> XOR <conditional_2>;
```



## Example
example of a full use case for sql

```console
$  mysql -u USERNAME -p # then enter the password # Now I'm in mysql
```
```sql
create database begginers_database;
show databases;
use begginers_database;

CREATE TABLE animales(
	id int NOT NULL,
	tipo varchar(255),
	estado varchar(255),
	PRIMARY KEY (id)
);

ALTER TABLE animales MODIFY COLUMN id int auto_increment; -- add a auto increment to id

INSERT INTO animales (tipo, estado) VALUES ('<value_tipo>','<value_estado>');
INSERT INTO animales (tipo, estado) VALUES ('<value_tipo2>','<value_estado2>');
INSERT INTO animales (tipo, estado) VALUES ('<value_tipo3>','<value_estado3>');
INSERT INTO animales (tipo, estado) VALUES ('<value_tipo4>','<value_estado4>');

UPDATE animales SET estado = "updated state" where id=4;

DELETE FROM animales WHERE id="3";



-- table 2

CREATE TABLE user (
	id int not null auto_increment,
	name varchar(50) not null, 
	edad int not null, 
	email varchar(50) not null,
	primary key (id)
);

INSERT INTO user (name, edad, email) VALUES ('Oscar',25,'osc@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('lay',14,'lay@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('nick',24,'nic@hotmail.com');
INSERT INTO user (name, edad, email) VALUES ('chanch',897,'chanf@outlook.com');

SELECT * FROM user;

select * From user limit 1;



-- left join
create table products ( 
	id int not null auto_increment,
	name varchar(50) not null,
	created_by int not null, 
	marca varchar(50) not null,
	primary key(id),
	foreign key(created_by) references user(id)
);

RENAME TABLE products to product;

insert into product (name, created_by, marca) values 
('ipad',1, 'apple'),('iphone',1, 'apple'),('watch', 3,'apple');

SELECT u.id, u.name, p.name from user u left join product p on u.id=p.created_by ;

SELECT u.id, u.name, p.name from user u right join product p on u.id=p.created_by ;

SELECT u.id, u.name, p.name from user u inner join product p on u.id=p.created_by ;

SELECT u.id, u.name, p.name from user u cross join product p on u.id=p.created_by ;

SELECT count(id), marca from product group by marca;

select count(p.id), u.name from product p left join user u on u.id=p.created_by group by p.created_by;

drop table product; 
drop table animales;
drop table user;