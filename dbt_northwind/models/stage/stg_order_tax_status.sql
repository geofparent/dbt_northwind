with source as (

    select * from {{ source('northwind', 'orders_tax_status') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
