-- Quantidade de transações ao longo do tempo?

select 
        count(IdTransacao) as qtd_transacoes,
        date(DtCriacao) as data_transacao

from transacoes

GROUP BY data_transacao
order by data_transacao desc