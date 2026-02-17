{{ config(
    schema='mart',
    database='ecommerce_db',
    materialized='table'
) }} 

with sales_data as (

    select 1 as order_id, 'Laptop' as product, 50000 as amount
    union all
    select 2 as order_id, 'Mobile' as product, 20000 as amount
    union all
    select 3 as order_id, 'Headphones' as product, 5000 as amount

)

select
    order_id,
    product,
    amount,
    amount * 0.18 as tax,
    amount + (amount * 0.18) as total_amount
from sales_data
