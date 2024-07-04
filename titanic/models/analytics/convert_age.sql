WITH titanic_convert_age AS
(
	SELECT  *

	FROM staging.drop_cols
)
SELECT  passenger_class
       ,CASE WHEN survived_indicator = '1' OR survived_indicator = 1 THEN TRUE
             WHEN survived_indicator = '0' OR survived_indicator = 0 THEN FALSE  ELSE NULL -- for any other values that are not 0 or 1
             END          AS survived_bool
       ,survived_indicator
       ,full_name
       ,sex
       ,CAST(age AS REAL) AS age_float

FROM titanic.staging.drop_cols