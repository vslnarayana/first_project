SELECT *, 
MD5(CONCAT(customer_id, account_id, name, city, state)) as record_hash
FROM {{ source('stg_load','customer_raw_1') }}

UNION ALL

SELECT *, 
MD5(CONCAT(customer_id, account_id, name, city, state)) as record_hash
FROM {{ source('stg_load','customer_raw_2') }}

UNION ALL

SELECT *, 
MD5(CONCAT(customer_id, account_id, name, city, state)) as record_hash
FROM {{ source('stg_load','customer_raw_3') }}