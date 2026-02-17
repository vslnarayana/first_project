{{ config(schema='mart', materialized='table') }}

select * from {{ ref('stg_orders') }}
