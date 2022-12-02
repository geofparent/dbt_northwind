with source as (

    select * from {{ source('northwind', 'inventory_transaction_types') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
