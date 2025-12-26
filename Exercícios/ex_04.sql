-- 4. Quantos produtos são de rpg?

select count(DescNomeProduto)

from produtos

where DescCategoriaProduto = 'rpg'