-- 8. Qual o produto com mais pontos transacionados?


with tab_produto as (
    
    select 
            t1.IdProduto,
            t1.DescNomeProduto,
            t2.IdTransacao


    from produtos as t1

    left join transacao_produto as t2
        on t1.IdProduto = t2.IdProduto
    
    )

select 
        t3.QtdePontos as pontos,
        t4.IdProduto,
        t4.DescNomeProduto as produto,
        t4.IdTransacao

from transacoes as t3

left join tab_produto as t4
    on t3.IdTransacao = t4.IdTransacao

where t4.DescNomeProduto is NOT NULL

group by produto

order by pontos DESC