select CONCAT(Nome, ' ', Sobrenome) as 'Nome Completo', e.Logradouro, e.Numero
from academia.Aluno as a
join academia.Endereco as e 
on a.Endereco_ID = e.Endereco_ID;

select CONCAT(Nome, ' ', Sobrenome) as 'Nome Completo', t.Telefone_Emergencia as 'Telefone Emergencial', e.CEP
from academia.Aluno as a
join academia.Telefone as t
on a.Telefone_ID = t.Telefone_ID
join academia.Endereco as e
on a.Endereco_ID = e.Endereco_ID;

select CONCAT(Nome, ' ', Sobrenome) as 'Nome Completo', t.Telefone_Contato as 'Telefone de Contato', e.CEP
from academia.Aluno as a
join academia.Telefone as t
on a.Telefone_ID = t.Telefone_ID
join academia.Endereco as e 
on a.Endereco_ID = e.Endereco_ID;

select CONCAT(Nome, ' ', Sobrenome) as 'Nome Completo', h.Periodo as 'Horario'
from academia.Aluno as a
join academia.Treino as t
on a.Aluno_ID = t.Aluno_ID
join academia.Horario as h
on t.Horario_ID = h.Horario_ID;

select a.Nome as 'Nome do Aluno', i.Nome as 'Nome do Instrutor', p.Nome_plano as 'Tipo de Plano'
from academia.Aluno as a
join academia.Treino as t
on a.Aluno_ID = t.Aluno_ID
join academia.Instrutor as i
on t.Horario_ID = i.Instrutor_ID
join academia.Plano as p
on a.Plano_ID = p.Plano_ID
order by p.Nome_plano;

select i.Nome as 'Nome do Instrutor', COUNT(a.Aluno_ID) as 'Pessoas'
from academia.Aula as au
join academia.Instrutor as i 
on au.Instrutor_ID = i.Instrutor_ID
join academia.Horario as h 
on au.Horario_ID = h.Horario_ID
join academia.Modalidade as m
on au.Modalidade_ID = m.Modalidade_ID
join academia.Treino as t 
on au.Modalidade_ID = t.Modalidade_ID 
and au.Horario_ID = t.Horario_ID
join academia.Aluno as a 
on t.Aluno_ID = a.Aluno_ID
where m.Nome_modalidade = 'Musculação' 
and h.Periodo = 'Noite'
group by i.Instrutor_ID;

