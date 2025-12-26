-- 2. Quais clientes assinaram a lista de presença no dia 2025/08/25?
with tab_clientes as (

select
        t1.IdCliente,
        t2.DtCriacao,
        t2.IdTransacao

from clientes as t1

left join transacoes as t2
on t1.IdCliente = t2.IdCliente

)

select 
       DISTINCT t4.IdCliente,
        date(t4.DtCriacao) as data_assinatura,
        t3.IdProduto

from transacao_produto as t3

LEFT JOIN tab_clientes as t4
on t3.IdTransacao = t4.IdTransacao

where t3.IdProduto = 11
AND
data_assinatura = '2025-08-25'