CREATE VIEW passenger_survival AS
SELECT  pclass
       ,sex
       ,AVG(CAST(survived AS INTEGER))          AS survival_rate
       ,AVG(age)                                AS average_age
       ,COUNT(*)                                AS total_passengers
       ,COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS percentage_of_total_passengers
FROM staging.stg_typing
WHERE age >= 0 -- Exclude missing ages
GROUP BY  pclass
         ,sex;