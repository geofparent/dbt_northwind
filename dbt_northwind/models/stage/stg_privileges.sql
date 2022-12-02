with source as (

    select * from {{ source('northwind', 'privileges') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
