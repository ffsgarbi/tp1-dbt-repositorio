select
    *,
    datediff(day, data_inicio, data_fim) as total_dias,
    orcamento * 0.10 as margem_orcamento
from {{ source("sources", "campanhas") }}
