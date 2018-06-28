
-- (b) What is the company's average profit from repairs (= average cost of damages) per month.
SELECT date_trunc('month', end_date), AVG(cost)
FROM repairs
GROUP BY date_trunc('month', end_date)
ORDER BY date_trunc('month', end_date);

-- (c) Who is the sales person with the highest "turnover" (= sales value –purchase value).
SELECT employees.firstname, employees.lastname, SUM(sales.price) as mx
FROM sales
JOIN employees ON employees.id_employee = sales.id_employee
GROUP BY employees.firstname, employees.lastname
ORDER BY mx DESC LIMIT 1;

-- (d) Which are the repairs that are still pending (i.e., have not been completed yet).
SELECT * FROM repairs
WHERE end_date IS NULL;

-- (e) Which are the vehicles that have been repaired more than once in the last year.
SELECT id_vehicule,*
FROM vehicules
WHERE 1 < (
    SELECT count(id_vehicule)
    FROM repairs
    WHERE id_vehicule = vehicules.id_vehicule
    AND end_date > date_trunc('month', CURRENT_DATE) - INTERVAL '1 year'
);
