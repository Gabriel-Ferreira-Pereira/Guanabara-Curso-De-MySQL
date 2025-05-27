/* Vídeo 12 - SELECT ( Parte 2 ) */

/* 1- Uma lista com o nome de todas as gafanhotas. */

select nome from gafanhotos
where sexo = 'F';

/* 2- Uma lista com  os dados de todos aqueles que nasceram entre 01/jan/2000 e 31/dez/2015. */

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

/* 3- Uma lista com o noemde todos os homens que trabalham como programadores. */

select nome from gafanhotos
where profissao = 'Programador' and sexo = 'M';

/* 4- Uma lista com os dados de todos as mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra J. */

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/* 5- Uma lista com o nome e nascionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e oesam menos de 100Kg. */

select nome, nacionalidade from gafanhotos
where nome like '%Silva' and peso < '100' and nacionalidade != 'Brasil' and sexo = 'M';

/* 6- Qual é a maior altura entre gafanhotos homens que moram no Brasil? */

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

/* 7- Qual é a média de peso dos gafanhotos cadastrados? */

select avg(peso) from gafanhotos;

/* 8- Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/dez/2000? */

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/* 9- Quantas gafanhotos mulheres têm mais de 1.90m de altura? */

select count(sexo) from gafanhotos
where sexo = 'F' and altura > '1.90';