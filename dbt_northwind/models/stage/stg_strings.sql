with source as (

    select * from {{ source('northwind', 'strings') }}
)


select 
    *,
    current_timestamp() as insert_timestamp
from source
