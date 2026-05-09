with source as (
    select * from {{ source('sources', 'campanhas') }}
),
calculated as (
    select
        *,
        -- Calcula a diferença em dias entre a data_fim e data_inicio
        datediff(day, data_inicio, data_fim) as total_dias
    from source
)
select * from calculated