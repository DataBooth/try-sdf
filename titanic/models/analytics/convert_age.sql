WITH titanic_convert_age AS
(
	SELECT  *
	FROM staging.drop_cols
)
SELECT  passenger_class
       ,survived_indicator
       ,full_name
       ,sex
       ,age
FROM titanic.staging.drop_cols