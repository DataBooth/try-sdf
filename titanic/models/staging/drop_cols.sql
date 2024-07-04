WITH titanic_drop AS
(
	SELECT  *
	FROM staging.rename
)
SELECT  passenger_class
       ,survived_indicator
       ,full_name
       ,sex
       ,age
FROM titanic.staging.rename