{{ config(
    materialized='table'
) }}select
    product_id,
    product_name,
    category,
    price,
    case 
        when price < 50 then 'Low'
        when price between 50 and 200 then 'Medium'
        else 'High'
    end as price_category
from {{ source('raw', 'products') }}
where product_id is not null
