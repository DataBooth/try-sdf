WITH convert_age AS (
    SELECT *
    FROM staging.dropping
)

SELECT
    passenger_class,
    survived_indicator,
    full_name,
    sex,
    CASE
        WHEN survived_indicator = '1' OR survived_indicator = 1 THEN TRUE
        -- for any other values that are not 0 or 1
        WHEN survived_indicator = '0' OR survived_indicator = 0 THEN FALSE
    END AS survived_bool,
    CAST(age AS REAL) AS age_float

FROM titanic.staging.dropping
