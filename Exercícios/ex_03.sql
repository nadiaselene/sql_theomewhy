-- 3. Qual cliente fez mais transações no ano de 2024?

select 
        COUNT(DISTINCT IdTransacao) AS "transacoes",
        IdCliente,
        DtCriacao

from transacoes

WHERE 
    DtCriacao BETWEEN '2024-01-01' and '2024-12-31'


group by IdCliente

ORDER BY transacoes DESC

limit 1
