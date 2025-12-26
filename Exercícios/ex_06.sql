-- 6. Qual dia da semana quem mais pedidos em 2025?

select 
        Count(IdTransacao) as 'total_pedidos',
        CASE strftime('%w', date(DtCriacao))
            WHEN '0' THEN 'Domingo'
            WHEN '1' THEN 'Segunda-feira'
            WHEN '2' THEN 'Terça-feira'
            WHEN '3' THEN 'Quarta-feira'
            WHEN '4' THEN 'Quinta-feira'
            WHEN '5' THEN 'Sexta-feira'
            WHEN '6' THEN 'Sábado'
        END AS 'dia_semana'

from transacoes

WHERE date(DtCriacao) BETWEEN '2025-01-01' and '2025-12-31'

GROUP BY
    dia_semana, strftime('%w', date(DtCriacao))
ORDER BY
    total_pedidos DESC
LIMIT 1