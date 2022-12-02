with source as (

    select * from {{ source('northwind', 'orders') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
