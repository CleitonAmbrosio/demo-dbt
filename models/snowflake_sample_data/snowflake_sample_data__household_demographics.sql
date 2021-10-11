{{ config(materialized='table') }}

with source_household_demographics as(
    select * from {{ source('snowflake_sample_data', 'HOUSEHOLD_DEMOGRAPHICS') }}
),

final as(
    select * from source_household_demographics
)

select * from final