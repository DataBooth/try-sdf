SELECT
    COUNT(CASE WHEN survived IS NULL THEN 1 END) AS null_survived,
    COUNT(CASE WHEN pclass IS NULL THEN 1 END) AS null_pclass,
    COUNT(CASE WHEN name IS NULL THEN 1 END) AS null_name,
    COUNT(CASE WHEN sex IS NULL THEN 1 END) AS null_sex,
    COUNT(CASE WHEN age IS NULL THEN 1 END) AS null_age,
    COUNT(CASE WHEN sibsp IS NULL THEN 1 END) AS null_sibsp,
    COUNT(CASE WHEN parch IS NULL THEN 1 END) AS null_parch,
    COUNT(CASE WHEN ticket IS NULL THEN 1 END) AS null_ticket,
    COUNT(CASE WHEN fare IS NULL THEN 1 END) AS null_fare,
    COUNT(CASE WHEN cabin IS NULL THEN 1 END) AS null_cabin,
    COUNT(CASE WHEN embarked IS NULL THEN 1 END) AS null_embarked
FROM raw.raw_titanic
