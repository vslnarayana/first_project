{{ config(materialized='table') }}

select 
    current_database() as database_name,
    current_schema() as schema_name,
    current_role() as role_name,
    current_user() as user_name
