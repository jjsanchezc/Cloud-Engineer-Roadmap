# SQL

Database -> table

ask for data:

## Basic query
	SELECT <column_name> FROM <table>
	SELECT * FROM <table>
	SELECT <column_name> as AKA FROM <table>
	SELECT * FROM <table> where <contition1> = <value>
	
	# Text
	SELECT * FROM <table> where <contition1> like <value>
	SELECT * FROM <table> where <condition1> = <value> or <condition2> = <value>
	SELECT * FROM <table> where <condition1> like "%<value>" # if you want to find something ending on <value>
	SELECT * FROM <table> where <condition1> like "<value>%" # if you want to find something starting on <value>
	
	# Int
	SELECT * FROM <table> where <condition1> between <value1> and <value2>
	
	# null
	SELECT * FORM <table> where <condition1> is null # or "is not null"
	SELECT * FROM <table> order by <condition1> # if you want descending order just type "desc" at the end
	
	# Inner join and group by
	SELECT <table2>.<column_name> FROM <table1> inner join <table2> on <table1>.<PK or FK> = <table2>.<PK or FK> group by <table1>.<column_name>, <table2>.<column_name>