with source as (

    select * from {{ source('northwind', 'employee_privileges') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
