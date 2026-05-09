{{
    config(
        materialized = 'incremental',
        unique_key='cliente_id'
    )
}}

select * from {{source('sources', 'clientes')}}