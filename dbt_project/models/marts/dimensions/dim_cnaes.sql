with cnaes as (
    select
        *
    from {{ ref('int_cnaes') }}
)

select * from cnaes