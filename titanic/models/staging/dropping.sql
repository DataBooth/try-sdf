WITH titanic_drop AS (
    SELECT *
    FROM staging.renaming
)

SELECT
    passenger_class,
    survived_indicator,
    full_name,
    sex,
    age
FROM titanic.staging.renaming
