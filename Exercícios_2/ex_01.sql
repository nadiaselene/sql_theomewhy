-- 1. Quais clientes mais perderam pontos por Lover?

with tab_clientes as (

select
        t1.IdCliente,
        t2.QtdePontos,
        t2.IdTransacao

from clientes as t1

left join transacoes as t2
on t1.IdCliente = t2.IdCliente

)

select 
        t3.IdTransacao,
        t4.IdCliente,
        sum(t4.QtdePontos) as pontos_perdidos,
        t3.IdProduto

from transacao_produto as t3

LEFT JOIN tab_clientes as t4
on t3.IdTransacao = t4.IdTransacao

where t3.IdProduto = 13

group by t4.idCliente

order by pontos_perdidos