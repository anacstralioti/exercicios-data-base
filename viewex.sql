create view tempo_musicas as (
select musicas.nome, SEC_TO_TIME(SUM( TIME_TO_SEC( musicas.duracao ) ) ) as duracao_total
from musicas
inner join generos
on musicas.generos_id = generos.id
where generos.descricao <> "Gaúcha" and generos.descricao <> "Pop"
and SUBSTR(musicas.duracao, 1, 2) < '04');