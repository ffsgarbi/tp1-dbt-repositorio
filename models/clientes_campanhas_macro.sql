select
    *,
    {{ campos_calculados_campanha() }}
from {{ source("sources", "campanhas") }}