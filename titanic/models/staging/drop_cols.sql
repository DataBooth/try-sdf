/*
 ## PURPOSE: Discard redundant columns from the analysis
 
 ## DISCARDED COLUMNS:
 sibsp           Number of Siblings/Spouses Aboard
 parch           Number of Parents/Children Aboard
 ticket          Ticket Number
 fare            Passenger Fare
 cabin           Cabin
 embarked        Port of Embarkation: (C = Cherbourg; Q = Queenstown; S = Southampton)
 boat            Lifeboat
 body            Body Identification Number
 home.dest       Home/Destination
 */
WITH titanic_drop AS (
  SELECT *
  FROM staging.raw_titanic
)
SELECT passenger_class,
  survived_indicator,
  full_name,
  sex,
  age
FROM titanic.staging.raw_titanic