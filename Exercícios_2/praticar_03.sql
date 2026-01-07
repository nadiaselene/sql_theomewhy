-- Qual mês tivemos mais lista de presença assinada?

select
    count(t3.IdTransacao) as total_lista,
    STRFTIME('%m', t3.DtCriacao) as mes_assinatura
from transacoes t3
join transacao_produto t1
    on t3.IdTransacao = t1.IdTransacao
join produtos t2
    on t1.IdProduto = t2.IdProduto
where
    t2.IdProduto = 11

GROUP BY mes_assinatura
order by total_lista desc