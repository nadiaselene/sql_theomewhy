-- 2. Qual cliente juntou mais pontos positivos em 2025-05?

select
        idCliente,
        qtdePontos,
        DtAtualizacao

from clientes

where 
        DtAtualizacao BETWEEN '2025-05-01' AND '2025-05-31'
        AND
        qtdePontos > 0

order by qtdePontos DESC

limit 1