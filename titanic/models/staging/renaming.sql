WITH source AS (
    SELECT *
    FROM raw.raw_titanic
),

renamed AS (
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
    FROM source
)

SELECT *
FROM renamed;
