CREATE VIEW stg_typing AS
SELECT
    pclass,
    name,
    sex,
    sibsp,
    parch,
    ticket,
    fare,
    cabin,
    CAST(survived AS BOOLEAN) AS survived,
    CAST(age AS DOUBLE) AS age,
    -- Standardizing empty strings to NULL
    CASE WHEN embarked = '' THEN NULL ELSE embarked END AS embarked,
    COUNT(CASE WHEN embarked = '' THEN NULL ELSE embarked END)
        OVER ()
        AS processed_embarked_count
FROM raw.raw_titanic;
