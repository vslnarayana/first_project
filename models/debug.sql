

{{ config(
    materialized='table',
    schema='l1_landing',
    database='sleekmart_oms'
) }}

select '{{ this }}' as fq_table_name

