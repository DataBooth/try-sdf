WITH titanic_convert_age AS
(
	SELECT  *
	FROM staging.drop_cols
)
SELECT  passenger_class
       ,survived_indicator
       ,full_name
       ,sex
       ,CAST(age AS REAL) AS age_float

FROM titanic.staging.drop_cols