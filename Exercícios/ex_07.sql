-- 7. Qual o produto mais transacionado?

select
        count(t1.QtdeProduto) as 'qtd_venda',
        t2.DescNomeProduto
from transacao_produto as t1

LEFT JOIN
    produtos as t2
on t1.IdProduto = t2.IdProduto

where t2.DescNomeProduto is not null

group by t2.DescNomeProduto

order by qtd_venda DESC

limit 1