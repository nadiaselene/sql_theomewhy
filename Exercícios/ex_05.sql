-- 5. Qual o valor médio de pontos positivos por dia?

select 
        qtdePontos,
        DtCriacao,
        DtAtualizacao,
        qtdePontos/(julianday(DtAtualizacao) - julianday (DtCriacao)) as 'avg_pontos'

from clientes

WHERE
        qtdePontos > 0
        AND
        avg_pontos is NOT NULL

order by DtAtualizacao ASC