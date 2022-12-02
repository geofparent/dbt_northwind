with source as (

    select * from {{ source('northwind', 'customer') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
