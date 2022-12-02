with source as (

    select * from {{ source('northwind', 'inventory_transactions') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
