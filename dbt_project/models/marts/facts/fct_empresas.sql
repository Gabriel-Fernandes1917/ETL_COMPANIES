with empresas as (
    select
        *
    from {{ ref('int_empresas') }}
)

select * from empresas