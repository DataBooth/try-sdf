/*
 ## PURPOSE: Load raw data from CSV data source
 ## VARIABLE DESCRIPTIONS:
 See blog project ==> data/titanic3info.txt
 pclass          Passenger Class: (1 = 1st; 2 = 2nd; 3 = 3rd)
 survival        Survival: (0 = No; 1 = Yes)
 name            Name
 sex             Sex
 age             Age
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
with source as (
    select *
    from raw.raw_titanic
),
renamed as (
SELECT
  pclass AS passenger_class,
  survived AS survived_indicator,
  name AS full_name,
  sex,
  age,
  sibsp AS n_siblings_spouse,
  parch AS n_parent_child,
  ticket AS ticket_number,
  fare,
  cabin,
  embarked AS port_embarked,
  boat AS life_boat,
  body AS body_id,
  home_dest AS home_or_dest
    from source
)
select *
from renamed;