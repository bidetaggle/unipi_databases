# Database #

## task 1 ##
- relational-db.jpg
- db.sql

## task 2 ##

- queries.sql

## task 3 ##

### installation & run instructions ###

- `$ cd client`
- `$ npm install pg`
- `$ node main.js`

### output screenshots and interpretation ###

![code output b](client-output/b.png)
For each month you have a json object with the related date and the average profit

![code output c](client-output/c.png)
The person with the highest turnover is Jinny Aked (id_employee 7) with 103703 euros benefits (congratulations !)

![code output d](client-output/d.png)
Each json object listed is a pending repair (no end_date filled) with different interesting data as the start date, the cost, the person working on it

![code output e](client-output/e.png)
Each jsoin object is the car which had several troubles the last year

I didn't succeed to do the (a) query

# personal reminder #

sudo -i -u postgres
psql

in psql :
\l - list the databases
\connect company3
\dt - list the tables of the connected database

DO NOT FORGET ';' AT THE END OF EACH INSTRUCTION OR YOU GONNA BLOW YOUR MIND UP lol
