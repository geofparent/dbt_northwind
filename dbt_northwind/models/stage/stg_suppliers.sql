with source as (

    select * from {{ source('northwind', 'suppliers') }}
)


select 
    *,
    current_timestamp() as insert_timestamp
from source
