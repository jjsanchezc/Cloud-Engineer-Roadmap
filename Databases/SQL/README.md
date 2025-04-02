# SQL



Database -> table

## Basic query
```sql
SELECT <column_name> FROM <table>
SELECT <column_name_1>,...,<column_name_n> FROM <table>
SELECT * FROM <table>
```
`AS`:

```sql
SELECT <column_name> AS <AKA> FROM <table>;
```

`BETWEEN`:

```sql
SELECT * FROM <table> WHERE <condition1> BETWEEN <value1> AND <value2>;
```

`=`:

```sql
SELECT * FROM <table> WHERE <condition1> = <value>;
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

`LIKE`:

```sql
-- Search for a pattern in a text
SELECT * FROM <table> WHERE <condition1> LIKE <value>;

-- Find something that ends with a specific value
SELECT * FROM <table> WHERE <condition1> LIKE "%<value>";

-- Find something that starts with a specific value
SELECT * FROM <table> WHERE <condition1> LIKE "<value>%";
```

`NOT LIKE`:

```sql
SELECT * FROM <table> WHERE <condition1> NOT LIKE "<value>"
```

`ORDER BY`:

```sql
SELECT * FROM <table> ORDER BY <condition1>;  -- Ascending order
SELECT * FROM <table> ORDER BY <condition1> DESC;  -- Descending order
```

`ROUND`:

```sql
-- ROUND behavior:
-- If decimal_places is positive, it rounds to that many decimal places.
-- If decimal_places is zero or omitted, it rounds to the nearest integer.
-- If decimal_places is negative, it rounds to the left of the decimal point (to the nearest 10, 100, etc.).
SELECT ROUND(<number>, <decimal_places>);
```

`XOR` (Exclusive OR):

```sql
SELECT * FROM <table_name> WHERE <conditional_1> XOR <conditional_2>;
```

## Data manipulation

`ALTER TABLE`:

```sql

```

`SHOW TABLE`:

```sql
```

`CREATE TABLE`:

```sql
```

`INSERT`:

```sql
```

`SELECT`:

```sql
```

`UPDATE`:

```sql
```