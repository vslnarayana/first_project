{{ config(materialized='table') }}select
    customer_id,
    initcap(first_name) as first_name,
    initcap(last_name) as last_name,
    lower(email) as email,
    country,
    created_at::date as created_date
from {{ source('raw', 'customers') }}
where customer_id is not null
