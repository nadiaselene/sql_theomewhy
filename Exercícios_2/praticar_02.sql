--Em 2024, quantas transações de Lovers tivemos?

select
    count(t3.IdTransacao) as total_transacoes_lovers
from transacoes t3
join transacao_produto t1
    on t3.IdTransacao = t1.IdTransacao
join produtos t2
    on t1.IdProduto = t2.IdProduto
where
    t2.DescCategoriaProduto = 'lovers'
    and t3.DtCriacao >= '2024-01-01'
    and t3.DtCriacao < '2025-01-01';
