CREATE VIEW stg_typing AS
SELECT
 CAST(survived AS BOOLEAN) AS survived
       ,pclass
       ,name
       ,sex
       ,CAST(age AS DOUBLE) AS age
       ,sibsp
       ,parch
       ,ticket
       ,fare
       ,cabin
       ,CASE WHEN embarked = '' THEN NULL  ELSE embarked END AS embarked -- Standardizing empty strings to NULL
       ,COUNT(CASE WHEN embarked = '' THEN NULL ELSE embarked END) OVER() AS processed_embarked_count
FROM raw.raw_titanic;