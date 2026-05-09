select 
    cc.campanha_id, cc.cliente_id, cl.nome_cliente, cc.data_participacao
from {{ source('sources', 'clientes_campanhas') }} as cc
inner join {{ source('sources', 'clientes') }} as cl on cl.cliente_id = cc.cliente_id

