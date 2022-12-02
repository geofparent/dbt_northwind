with source as (

    select * from {{ source('northwind', 'shippers') }}
)


select 
    *,
    current_timestamp() as insert_timestamp
from source
