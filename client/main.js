const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  host: '',
  database: 'company3',
  password: '',
  port: 5432,
})
client.connect()

client.query(`SELECT * FROM repairs WHERE end_date IS NULL;`, (err, res) => {
    console.log(`SELECT * FROM repairs WHERE end_date IS NULL;`)
    console.log(res.rows)
})

client.query(`SELECT date_trunc('month', end_date), AVG(cost) FROM repairs GROUP BY date_trunc('month', end_date);`, (err, res) => {
    console.log(`SELECT date_trunc('month', end_date), AVG(cost) FROM repairs GROUP BY date_trunc('month', end_date);`)
  console.log(res.rows)
})

client.query(`SELECT id_vehicule,*
FROM vehicules
WHERE 1 < (
    SELECT count(id_vehicule)
    FROM repairs
    WHERE id_vehicule = vehicules.id_vehicule
    AND end_date > date_trunc('month', CURRENT_DATE) - INTERVAL '1 year'
);`, (err, res) => {
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
