CREATE TABLE TB_EMPRESA 
(cod_empresa varchar(5)
,nome_empresa varchar(50)
,PRIMARY KEY (cod_empresa));

CREATE TABLE TB_DEPARTAMENTO
(cod_departamento varchar(5)
,nome_departamento varchar(50)
,cidade_departamento varchar(50)
,cod_empresa varchar(5)
,PRIMARY KEY (cod_departamento));

CREATE TABLE TB_PROJETO
(cod_projeto varchar(5)
,nome_projeto varchar(50)
,orcamento_projeto float
,data_inicio_projeto date
,cod_departamento varchar(5)
,PRIMARY KEY (cod_projeto));

CREATE TABLE TB_FUNCIONARIO
(cod_funcionario varchar(5)
,nome_funcionario varchar(50)
,data_admissao date
,cod_departamento varchar(5)
,PRIMARY KEY (cod_funcionario));

CREATE TABLE TB_DEPENDENTE
(cod_dependente varchar(5)
,nome_dependente varchar(50)
,tipo_dependencia varchar(50)
,idade_dependente integer
,cod_funcionario varchar(5)
,PRIMARY KEY (cod_dependente));