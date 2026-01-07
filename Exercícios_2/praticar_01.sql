-- • Qual categoria tem mais produtos vendidos?

select
        t1.idTransacaoProduto,
        sum(t1.QtdeProduto) as soma_venda_produto,
        t2.IdProduto,
        t2.DescCategoriaProduto as categoria_produto

from transacao_produto as t1

left join produtos as t2
on t1.IdProduto = t2.IdProduto

group by categoria_produto
order by soma_venda_produto DESC