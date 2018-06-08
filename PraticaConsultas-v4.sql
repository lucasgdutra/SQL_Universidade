/* 


Orientações:
(1) Consulte o esquema 'banco' disponível no Moodle para resolver a prática. Para manipulação de datas é necessário consultar o manual do PostgreSQL:
a. http://www.postgresql.org/docs/8.4/static/functions-datetime.html
b. http://pgdocptbr.sourceforge.net/pg80/functions-datetime.html

(2) Operador para concatenar strings: ||

(3) As consultas devem estar indentadas

(4) Deve ser entregue a consulta SQL juntamente com o resultado da consulta. Tudo em um arquivo texto com extensão .sql. 
Exemplo:

*
-- 9) Mostrar todos os alunos
*/
SELECT * FROM aluno;
/*
"Celso";2345;22;"Sao Carlos"
"Pedro";2344;27;"Sao Carlos"
"Cicero";3456;22;"Araraquara"
"Carlitos";4567;21;"Ibitinga"
"Catarina";5678;23;"Sao Carlos"
"Cibele";6789;21;"Araraquara"
"Corina";7890;25;"Rio Claro"
"Celina";8901;23;"Sao Carlos"
"Celia";9012;20;"Rio Claro"
"Cesar";123;21;"Araraquara"
"Carlos";1234;21;"Sao Carlos"
*/
/*
10) Mostrar todos os professores
*/
SELECT *
FROM PROFESSOR;
/*
"Ari";"1111 ";"MS-1 ";25
"Adao";"2222 ";"MS-2 ";30
"Anselmo";"3333 ";"MS-2 ";31
"Amalia";"8888 ";"MS-3 ";39
"Ana";"4444 ";"MS-3 ";31
"Alice";"5555 ";"MS-3 ";35
"Amauri";"6666 ";"MS-3 ";34
"Artur";"7777 ";"MS-4 ";41
"Adriana";"9999 ";"MS-5 ";45
*/


--1) Consultas simples usando SELECT 
    SELECT 2+2
	SELECT 'A'
	SELECT 50 > 3
	SELECT '11/10/2020'
	SELECT '11/10/2020' - '11/10/2030' -- é possível esse comando?
	
	
--2) Consultas simples usando SELECT e renomeando colunas
    SELECT 2+2 AS soma
	SELECT 'A' as letra
	SELECT 50 > 3 as resultado
	SELECT '11/10/2020' as dia -- qual o tipo retornado?
	
	
--3) Consultas usando SELECT * FROM usando uma tabela do banco
     --- (a) Listar todos os alunos da universidade
     --- (b) Listar todos as salas cadastradas
     --- (c) Listar todas as disciplinas


--4) Consultas usando SELECT <coluna>  [... ,] FROM
	--- (a) Listar o nome e a data de nascimento de todos os alunos
	--- (b) Listar o nome de todas as faculdades
	--- (c) Listar todas os horários iniciais disponíveis

--5) Consultas com SELECT <coluna> [... ,] AS <novo_nome> FROM
     --- (a) Listar todos os nomes das discicplinas e seus crédios, trocando, no resultado, o crédito
             --- por 'carga'.
     --- (b) Supondo que 1 crédito de aula corresponda a 15 horas de aula, listar todos os nomes das discicplinas 
	         --- e seus crédios, trocando, no resultado, o crédito por 'carga_horaria' e faça a conversão em horas
			 --  dos valores
     --- (c) Listar todas as faculdades, renomeando as colunas de saída como faculdade(cod,nome_faculdade,local,orcamento)
	 --- (d) Listar o nome e a idade em anos de todos os estudantes cadastradas no banco

	 
--6) Consultas com SELECT FROM WHERE - com uma condição de seleção
     --- (a) Listar todos as faculdade localizadas no predio '1F'
     --- (b) Listar todas os alunos com CRA superior a 60
     --- (c) Listar todas as turmas ofertadas neste semestre  
     --- (d) Mostre o aniversário (somente o dia e mês) de um dos integrantes do seu grupo (escolher um dos nomes)
     --- (e) Listar o nome de todas as disciplinas que começam com a letra “S”
     --- (f) Listar todos os estudantes que nasceram últimos 20 anos 
         ---    (essa consulta deve ser genérica – você não deve explicitar nenhuma data)
     --- (g) Listar todos os estudantes que não possuem tutores 
	 --- (h) Listar todos os estudantes que possuem tutores 
     --- (i) Listar as disciplinas ministradas de 2000 até hoje. 
	 --- (j) Mostrar os estudantes (nome /datanasc) que nasceram entre 1985 e 1995. Utilizar BETWEEN
	 --- (k) Mostrar, em ordem alfabética, os nomes das pessoas entre “Carlos” e “Maria”. Utilizar BETWEEN
	 --- (l) Mostrar os nomes das disciplinas das seguintes faculdades: FADIR, FAMAT, FEMEC. 
	     ---   Não utilizar o operador OR. Utilizar somente um SELECT.
	 --  (m) Mostrar se algum registro da tabela turma possui erro no cadastro 
	     ---  do semestre (ou seja, diferente de 1 ou 2)	 
	 
-- 6A) Consultas com atualizações
	 --- (a) Altere para letras em maiúsculo os nomes de todas as disciplinas
     --- (b) Aumente o CRA de todos os alunos em 10%
	 --- (c) Passe para o valor 100 os CRAs que ficaram acima de 100
	 --- (d) Não deixe que alunos com CRA menor que 80 façam iniciação científica
	 --- (e) Passe todos os professores e alunos da FACOM para a FAMAT


-- 6B) Consultas com remoção. Em alguns casos será necessário mais de um comando para 
--       a ação de completar. Coloque todos os comando necessários e na ordem correta
	 --- (a) Remova todos as informação de pré-requisito que existem no banco.
     --- (b) Remova as salas com capacidade inferior a 90 lugares. MOstrar o comando 
	      --- e indicar se ele foi executado corremente ou se ocorreu algum erro
	 --- (c) Remova a faculdade FACOM. Se alguma informação ainda dependa da FACOM, 
	    ---    passá-la para FAMAT antes da remoção

-- 6C) Volte o banco ao estado original, antes das remoções e atualizações,	 
	 
-- 7) Consultas com SELECT FROM WHERE - com duas ou mais condições de seleção
     --- (a) Listar todos as faculdade localizadas no predio '1F' e com orçamento superior a R$ 5000,00
     --- (b) Listar todas os alunos com CRA superior a 60 e que estudam na faculdade 'FACOM'
     --- (c) Listar todas as turmas ofertadas neste semestre  da disciplina de cógido <ESCOLHER>
     --- (d) Listar todos os nome e data de nascimento dos estudantes que possuem  tutores  e possuem CRA maior que 80
     --- (e) Listar o código e nome de todas as disciplinas cujo códigos começam com 'GBC' e possuem 4 créditos.
	 --- (h) Listar todos os estudantes que não possuem possuem tutores mas que possuem CRA maior ou igual a 60

-- 8) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS 
-- >> Atenção: Colocar a condição de junção no WHERE
     --- (a) Liste o nome de todos as disciplinas juntamente com o nome das suas respectivas faculdades
     --- (b) Listar o nome de todas as disciplinas juntamente com todos as informações sobre suas turmas
	 --- (c) Listar o nome do aluno e o nome de seu tuto
	 --- (d) Listas os nomes das disciplinas que tiveram turmas ofertadas no semestre atual (ano-semestre)
	 --- (e) Listar o *nome* da disciplina e o *código* da(s) disciplina(s) que são seu pré-requisito
	         --- e.g.: Disciplina  CAL001 | Cálculo 1      PRE_REQUISITO  CAL002 | CAL001
			 ---                   CAL002 | Cálculo 2                    (cálculo 2 tem como pré-requisito cálculo 1)
			 --- Resposta da consulta pedida:
			 --                     Cálculo 2 | CAL001
	 --- (f) Listar o *nome* das disciplinas que são pré-requisito juntamente com os *códigos* das disciplinas que
     ---	 dependem delas
	         --- e.g.: Disciplina  CAL001 | Cálculo 1      PRE_REQUISITO  CAL002 | CAL001
			 ---                   CAL002 | Cálculo 2                    (cálculo 2 tem como pré-requisito cálculo 1)
			 --- Resposta da consulta pedida:
			 --                     Cálculo 1 | CAL002


-- 9) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS 
-- >> Atenção: Colocar a condição de junção no WHERE
     --- (a) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram/ministraram 
     --- (b) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram neste semestre (ano-semestre)
     --- (c) Listar os nomes das disciplinas que são ofertadas (possuem turmas) em salas com capacidade superior a 10 lugares
	 --  (d) Listar o nome do estudante juntamente com o nome de sua faculdade e com o nome do seu professor tutor
	 
-- 10) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS 
-- >> *Atenção: colocar a condição de junção no FROM e demais condição no WHERE*
     --- (a) Liste o nome de todas as disciplinas juntamente com o nome das suas respectivas faculdades
     --- (b) Listar o nome de todas as disciplinas juntamente com todos as informações sobre suas turmas
	 --- (c) Listar o nome do aluno e o nome de seu tutor
	 --- (d) Listas os nomes das disciplinas que tiveram turmas ofertadas no semestre atual (ano-semestre)
	 --- (e) Listar o *nome* da disciplina e o *código* da(s) disciplina(s) que são seu pré-requisito
	         --- e.g.: Disciplina  CAL001 | Cálculo 1      PRE_REQUISITO  CAL002 | CAL001
			 ---                   CAL002 | Cálculo 2                    (cálculo 2 tem como pré-requisito cálculo 1)
			 --- Resposta da consulta pedida:
			 --                     Cálculo 2 | CAL001
	 --- (f) Listar o *nome* das disciplinas que são pré-requisito juntamente com os *códigos* das disciplinas que
     ---	 dependem delas
	         --- e.g.: Disciplina  CAL001 | Cálculo 1      PRE_REQUISITO  CAL002 | CAL001
			 ---                   CAL002 | Cálculo 2                    (cálculo 2 tem como pré-requisito cálculo 1)
			 --- Resposta da consulta pedida:
			 --                     Cálculo 1 | CAL002


-- 11) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS 
-- >> *Atenção: colocar a condição de junção no FROM e demais condição no WHERE*
     --- (a) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram/ministraram 
     --- (b) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram neste semestre (ano-semestre)
     --- (c) Listar os nomes das disciplinas que são ofertadas (possuem turmas) em salas com capacidade superior a 10 lugares
	 --  (d) Listar o nome do estudante juntamente com o nome de sua faculdade e com o nome do seu professor tutor
	 --  (e) Listar todas as turmas juntamente com as salas
	 --  (f)	Inclua a data de nascimento em Professor e preencha aleatoriamente.
		--	Liste os nomes e idade dos professores e dos Estudantes que possuem a mesma idade.
        --	A coluna que vai listar o nome do professor deve-se chamar professor e a coluna que 
		--  listará o nome do Estudante deve-se chamar Estudante
	-- (g)	Lista os nomes dos professores e dos Estudantes que não possuem a mesma idade. Também mostrar 
		-- 	a idade do professor e do Estudante. As colunas que vão mostrar o nome e idade do professor
		-- devem-se chamar professor e prof_idade respectivamente e as colunas que listarão o nome e 
		-- a idade do Estudante devem-se chamar estudante e est_idade, respectivamente.
	 
	 
-- 12) CONSULTAS ENVOLVENDO JUNÇÕES COM UMA RELAÇÃO SENDO USADA MAIS DE UMA VEZ
    -- (a) Listar o nome de uma disciplina juntamente com o *nome* de seu pré-requisito. 
	--     Renomei o nome dos atributos da relação resultante para nome_disciplina e nome_prereq, respectivamente.
	         --- e.g.: Disciplina  CAL001 | Cálculo 1      PRE_REQUISITO  CAL002 | CAL001
			 ---                   CAL002 | Cálculo 2                    (cálculo 2 tem como pré-requisito cálculo 1)
			 --- Resposta da consulta pedida:
			 --                     Cálculo 2 | Cálculo 1
	-- (b) Listar os nomes das disciplinas que possuem mais crédito que seus pré-requisito
	       -- ps: se não houver nenhuma, cadastrar pelo menos 2 para testar
	-- (c) Listar os nomes das disciplinas pertencem a faculdades distintas de seus pré-requisitos
	       -- ps: se não houver nenhuma, cadastrar pelo menos 2 para testar
	-- (d) Listar as faculdades dos alunos e seus tutores
	       -- Na resposta mostrar o nome do aluno, nome de sua faculdade, o nome do professor e o nome de sua faculdade
	-- (e) Listar os alunos que estão vinculados a faculdades distintas de seus tutores.
	       -- Na resposta mostrar o nome do aluno, nome de sua faculdade, o nome do professor e o nome de sua faculdade
    -- (f) Mostrar os estudantes que estão frequentando tumas de disciplinas que são ofertadas por outras faculdades
	       -- Na resposta mostrar o nome do aluno, nome de sua faculdade, o nome da disciplina e a faculdade da disciplina
		   -- ps: se não houver nenhuma, cadastrar pelo menos 2 para testar
    -- (g) Listar todas as matrículas existentes, indicando para cada uma o nome do Estudante e o nome da disciplina.		   
		   
-- 13) CONSULTAS COM OPERADOR 'IN' / 'NOT IN' / <> ou !=     
    -- (a) Listar o nome das disciplinas que não possuem pré-requisitos
	-- (b) Listar as disciplinas que são pré-requisitos
	-- (c) Listar o nome das disciplinas que não são pré-requisito de outras disciplinas
	-- (d) Listar o nome dos estudantes que não estão frequentando turmas
	-- (e) Listar o prédio e sala que estão vazios (sem nenhuma aula - dica: use parênteses nos atributos envolvidos no WHERE)
	-- (f) Listar os nomes e salários dos professores que não ministraram nenhum disciplina
	-- (g) Listar os nomes e salários dos professores que não ministraram nenhum disciplina no semestre atual (ano-semestre)
	-- (h) Listas as turmas que estão sem horário cadastrado
	-- (i) Listar quais horários não estão sendo usados para ministrar as aulas

-- 14) CONSULTAS COM CROSS JOIN (PRODUTO CARTESIANO)
	-- (a)	Mostre o número de Estudantes que estão cadastrados na base
	-- (b)	Mostre o número de Matrículas que existem na base
	-- (c)	Faça o produto cartesiano entre as tabelas Estudante e Frequenta
	-- (d)	Mostre o número de tuplas retornado pelo produto cartesiano. Explique o porquê deste número
	-- (e)	Refaça o produto cartesiano entre as tabelas Estudante e Frequenta utilizando o comando CROSS JOIN
	-- (f)	Faça o produto cartesiano entre as tabelas Estudante, Disciplina, Frequenta e Turma. Não utilize CROSS JOIN. Não mostrar o resultado, somente indicar o número de linhas obtidas e o tempo de execução.
	
-- 15) CONSULTAS COM FUNÇÕES DE AGREGAÇÃO
    -- > Dica: construa a consulta sem a função de agregação e observe os dados para verificar se atendem ao enunciado.
	--         em seguida aplica a função de agregação
    -- (a) Mostrar o horário mais cedo que existe
	-- (b) Mostrar o CRA médio de todos os estudantes
	-- (c) Mostrar a média e o desvio padrão do CRA de todos os alunos
	-- (d) Mostrar a quantidade de professores do banco
	-- (e) Mostrar a quantidade de disciplinas da 'FACOM'
	-- (f) Mostrar a quantidade de estudantes que fazem iniciação científica (possuem tutores)
	-- (g) Mostrar a quantidade de orientadores de IC que existem
	-- (h) Mostrar a quantidade de professores que não são tutores de estudantes
	-- (i) Mostrar os nomes e data de nascimento do(s) aluno(s) mais velho(s)
	-- (j) Mostrar a quantidade de turmar que são ministradas em salar com capacidade superior a 10
	-- (k) Mostrar a quantidade total de turmas das disciplinas da FAMAT
	-- (l) Mostrar a quantidade de supervisores que trabalham em agências do 'RJ'
	-- (m) Mostrar a quantidade de disciplinas que são pré-requisitos para outras disciplinas
	-- (n) Mostrar a quantidade de disciplinas que possuem pré-requisitos
	-- (o) Mostrar a quantidade de disciplinas que não possuem pré-requisitos
	
	
-- 16) CONSULTAS COM CONCEITOS ENVOLVENDO OUTER JOINS (NEM TODAS PRECISAM DO OUTER JOIN)
	-- (a) Listar o nome dos professores juntamente com o *nome* de seus alunos de IC (quem eles tutoram)
	       -- Renomei o nome dos atributos da relação resultante para nome_professor e nome_aluno, respectivamente.
	       -- Se um professor não possuir orientandos, ele deve aparecer na resposta também
    -- (b) Listar o nome da disciplina juntamente com o nome de seus pré-requisitos. Caso a disciplina
            --	tenha mais de um pré-requisito, ela constará na resposta mais de uma vez 
			--  (uma vez para cada pré-requisito). Caso a disciplina não tenha pré-requisitos, ela
	        --  também deve aparecer na resposta
	-- (c) Listar todos os nomes dos professores juntamente com as turmas que ministram
            --	(turma,semestre,ano,codigo_disc). Se o professor não possuir disciplina
	        --  ele também deve aparecer na resposta. No lugar da código da disciplina
            --- deve aparecer a mensagem ('<professor sem disciplina>') 
	        -- dica: COALESCE()
	-- (d) Utilizando OUTER JOIN, o nome das disciplinas que não possuem pré-requisitos
	-- (e) Utilizando OUTER JOIN, o nome dos estudantes que não estão frequentando turmas 
	-- (f) Utilizando OUTER JOIN, listar as informações das turmas cujas aulas são na segunda ou quinta 
		   -- que não possuem estudantes frequentando a mesma (se não existir tuplas, cadastre algumas para atender a consulta)
	

-- 17) CONSULTAS USANDO AGRUPAMENTOS SIMPLES e com condição de seleção
    --> Em todas as questões as respostas devem ser **sem repetições**. Em muitos casos o DISTINCT resolveria
        -- a questão, mas para as questões abaixo não use o DISTINCT.
	-- (a) Listar todos os predios das faculdades.
	-- (b) Listar todos os as SIGLAS de faculdades. Comparar o tamanho da resposta com o número de faculdades e justificar.
	-- (c) Listar todos os semestres-ano que existem turmas.
	-- (d) Listar todos os prédios e salas que possuem turmas.
	-- (e) Listar todas as datas de nascimento, tutor e faculdade dos alunos
	-- (f) Listar todos os códigos de disciplinas das turmas dos anos de 2016 e 2017
 
-- 18) CONSULTAS COM CONDIÇÃO DE SELEÇÃO, AGRUPAMENTOS E FUNÇÕES AGREGADAS
    --> Pense bem na elaboração das consultas. Não há necessidade de usar Junções.
    -- (a) Listar a quantidade de professores por faculdade (mostrar o código da faculdade e o número de professores)
	-- (b) Para os professores que são tutores, listar o id do professor juntamente com o número de orientandos.
       -- somente docentes devem aparecer na consulta, não sendo aceito campos nulos	
	-- (c) Listar para cada data cadastrada a quantidade de alunos que nasceram na respectiva data
	-- (d) Listar a quantidade de turmas por prédio e sala
	-- (e) Listar a sigla de cada faculdade em que há alunos que fazem iniciação científica juntamente 
	--     com o maior CRA desses alunos
	-- (f) Listar todos os id de turmas que possuem alunos. Mostrar jutamente a maior nota de cada turma
	-- (g) Listar todos os id de turmas que possuem alunos. Mostrar jutamente a maior, a menor, a média e o desvio 
         -- padrão das notas
	-- (h) Listar para cada ID de turma a quantidade de professores que ministram na turma.
	-- (i) Lista a capacidade total de cada prédio 
	-- (j) Para as disciplinas que possuem pré-requisitos, listar o código da disciplina e o número de disciplinas que
	     -- ela depende
    -- (k) Listar para cada faculdade a quantidade de professores que são tutores. Lembre que um professor pode ser
	    -- tutor de mais de um aluno. A saída deve ser a sigla da faculdade e a quantidade de tutores
    -- (l) Listar para cada dia da semana e horário a quantidade de turmas alocadas. Na saída mostrar o Id_sem, Id_hora e quantidade
    -- (m) Listar a quantidade de professores que ganham mais que R$ 4000 de cada faculdade (mostrar a sigla da faculdade e o número de professores) 
	-- (n) Listar a quantidade de turmas das disciplinas com turmas nos anos de 2016 e 2017 (mostrar o código da disiciplina e a quantidade)
    -- (o) Mostrar a quantidade de disciplinas em cada faixa de crédito. 

-- 19) CONSULTAS COM AGRUPAMENTOS, JUNÇÕES/IN E FUNÇÕES AGREGADAS

	-- (a) Listar a quantidade de turmas de cada disciplina da FACOM (mostrar o código da disciplina e a quantidade)
	-- (b) Listar para cada faculdade com orçamento inferior a R$50.000 a quantidade de professores que ganham mais que R$4000.00
		--  (mostrar o código da faculdade e a quantidade)
	-- (c) Mostrar a nota média e desvio padrão de cada disciplina da FACOM. Mostrar o código da disciplina, a média e o desvio
	-- (d) Mostrar a quantidade de disciplinas ministradas pelos professores. Mostrar o id do professor e a quantidade
	    -- Incluir na resposta os professores que não ministram disciplinas. Nesse caso, deve-se mostrar 0 na quantidade
		-- Se não houver casos cadastrados no banco, fazer inserções para que estes apareçam
	-- (e) Mostrar a quantidade de disciplinas ministradas pelos professores que trabalham em faculdades com orçamento superior a R$ 10.000
	    -- Incluir na resposta os professores que não ministram disciplinas. Nesse caso, deve-se mostrar 0 na quantidade
		-- Se não houver casos cadastrados no banco, fazer inserções para que estes apareçam
    -- (f) Mostrar para cada faculdade a quantidade de turmas de disciplinas com mais do que 4 créditos.
	    -- Mostrar o ID da faculdade e a quantidade. Se a faculdade não tiver turmas com essa característica, 
		-- ela deve ser mostrada na resposta também, colocando como 0 a qte de turmas.
	-- (g) Mostrar para cada faculdade a quantidade de estudantes que frequentam disciplinas. 
	-- (h) Mostrar para cada faculdade a quantidade de estudantes que não frequentam nenhuma disciplina
	-- (i) Mostrar para cada faculdade a quantidade de disciplinas que possuem pré-requisitos
	
	

-- 20) CONSULTAS COM AGRUPAMENTOS E QUE LISTAM ATRIBUTOS NÃO AGRUPADOS.
    -->> Se o agrupamento for feito utilizando um atributo que é PK, pode-se mostrar no resultado da consulta
	  -- os atributos da mesma tabela e que não foram agrupados.
	-- (a) Listar a quantidade de turmas de cada disciplina (mostrar o *nome* da disciplina e a quantidade). Mostrar a saída ordenada pela quantidade
    -- (b) Mostrar, para cada turma de 2017-01, a quantidade de alunos que foram aprovados. 
	  -- Mostrar o *nome* da disciplina, a turma, o ano, e a quantidade. Mostrar a saída ordenada pelo nome da disciplina
    -- (c) Liste a quantidade de aulas que são ministradas em cada dia da semana (mostrar o dia da semana e a quantidade)
	-- (d) Mostrar para cada disciplina que é pré-requisito o seu nome e a quantidade de disciplinas que dela dependem
	   -- incluir na consulta disciplinas que não são pré-requisito, colocando 0 na quantidade.
	-- (e) Mostrar a média de salários dos professores para cada faculdade (mostrar o *nome* da faculdade e a quantidade).		
	-- (f) Listar para todas as faculdades o seu nome e o número de professores
	-- (g) Listar para todas as faculdades o seu nome e o número de alunos.
    -- (i) Listar para todas as faculdades o seu nome, o número de professores e o número de alunos.
	    -- verifique sua resposta com as consultas anteriores para conferir se as quantidades estão corretas
    -- (j) Refaça o exercício (i) utilizando subconsultas no FROM
    -- (k) Listar para todas as faculdades o seu nome, e a soma do número de professores e número de alunos.

 	
		   
-- 21) CONSULTAS COM CONDICIONAIS NOS GRUPOS e condições de seleção
	-- (a) Listar as turmas que possuem mais de 7 alunos. Mostrar o código da disciplina, a turma, o ano, 
	--     o semestre e quantidade de alunos
	-- (b) Listar as turmas que possuem média de notas inferior a 60
	-- (c) Listar as turmas de 2017-01 que possuem média de notas inferior a 60
	-- (d) Listar os nomes dos estudantes com mais de 6 disciplinas neste semestre 
		-- (mostrar o nome do estudante e a quantidade de disciplinas)
    -- (e) Mostrar as faculdades com menos de 3 disciplinas (mostrar a sigla da faculdade e a quantidade de disciplinas).
    -- (f) Listar os nomes dos estudantes com CRA>60 e com mais de 6 disciplinas neste semestre 
	   --(mostrar o nome do estudante e a quantidade de disciplinas)
	-- (g) Mostrar as turmas de disciplinas de 4 créditos que possuem mais de 5 alunos matriculados.
	    -- mostrar o código da disciplina, a turma, semestre, ano e a quantidade de alunos matriculados
	-- (h) Mostrar as turmas de disciplinas de 4 créditos que possuem mais de 5 alunos matriculados.
	    -- mostrar o *nome* da disciplina, a turma, semestre, ano e a quantidade de alunos matriculados
	
-- 22) CONSULTAS OPERADORES UNION/EXCEPT/INTERSECT
    -- (a) Mostrar os nomes de todas as pessoas cadastradas no banco
	-- (b) Mostrar os nomes dos professores e dos alunos que não ensinam/frequentam turmas
	-- (c) Mostrar os IDs das turmas que possuem docentes mas não possuem alunos frequentando
	-- (e) Mostrar os IDs das turmas que possuem docentes e que possuem alunos frequentando
	-- (f) Mostrar os IDs das turmas que possuem ou docentes ou alunos frequentando.