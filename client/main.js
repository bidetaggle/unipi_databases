const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  host: '',
  database: 'company4',
  password: '',
  port: 5432,
})
client.connect()

// (b) What is the company's average profit from repairs (= average cost of damages) per month.
client.query(`SELECT date_trunc('month', end_date), AVG(cost)
FROM repairs
GROUP BY date_trunc('month', end_date)
ORDER BY date_trunc('month', end_date);`, (err, res) => {
    console.log(`\n------------------------------------------------------------\n-- (b) What is the company's average profit from repairs (= average cost of damages) per month. --`)
    console.log(`SELECT date_trunc('month', end_date), AVG(cost)
    FROM repairs
    GROUP BY date_trunc('month', end_date)
    ORDER BY date_trunc('month', end_date);`)
    console.log(res.rows)
})

// (c) Who is the sales person with the highest "turnover" (= sales value –purchase value).
client.query(`SELECT employees.firstname, employees.lastname, SUM(sales.price) as mx
FROM sales
JOIN employees ON employees.id_employee = sales.id_employee
GROUP BY employees.firstname, employees.lastname
ORDER BY mx DESC LIMIT 1;`, (err, res) => {
    console.log(`\n------------------------------------------------------------\n-- (c) Who is the sales person with the highest "turnover" (= sales value –purchase value). --`)
    console.log(`SELECT employees.firstname, employees.lastname, SUM(sales.price) as mx
    FROM sales
    JOIN employees ON employees.id_employee = sales.id_employee
    GROUP BY employees.firstname, employees.lastname
    ORDER BY mx DESC LIMIT 1;`)
    console.log(res.rows)
})

// (d) Which are the repairs that are still pending (i.e., have not been completed yet).
client.query(`SELECT * FROM repairs WHERE end_date IS NULL;`, (err, res) => {
    console.log(`\n------------------------------------------------------------\n-- (d) Which are the repairs that are still pending (i.e., have not been completed yet). --`)
    console.log(`SELECT * FROM repairs WHERE end_date IS NULL;`)
    console.log(res.rows)
})

// (e) Which are the vehicles that have been repaired more than once in the last year.
client.query(`SELECT id_vehicule,*
FROM vehicules
WHERE 1 < (
    SELECT count(id_vehicule)
    FROM repairs
    WHERE id_vehicule = vehicules.id_vehicule
    AND end_date > date_trunc('month', CURRENT_DATE) - INTERVAL '1 year'
);`, (err, res) => {
    console.log(`\n------------------------------------------------------------\n-- (e) Which are the vehicles that have been repaired more than once in the last year. --`)
    console.log(`SELECT id_vehicule,*
    FROM vehicules
    WHERE 1 < (
        SELECT count(id_vehicule)
        FROM repairs
        WHERE id_vehicule = vehicules.id_vehicule
        AND end_date > date_trunc('month', CURRENT_DATE) - INTERVAL '1 year'
    );`)
    console.log(res.rows)
    client.end()
})
