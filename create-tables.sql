CREATE TABLE TB_EMPRESA 
(cod_empresa varchar(5)
,nome_empresa varchar(50)
,PRIMARY KEY (cod_empresa));
-------------------------------------------------------------------
CREATE TABLE TB_DEPARTAMENTO
(cod_departamento varchar(5)
,nome_departamento varchar(50)
,cidade_departamento varchar(50)
,cod_empresa varchar(5)
,PRIMARY KEY (cod_departamento));

ALTER TABLE TB_DEPARTAMENTO
ADD CONSTRAINT FK_EMPRESA 
FOREIGN KEY (cod_empresa) REFERENCES TB_EMPRESA (cod_empresa);

alter table "SYSTEM"."TB_DEPARTAMENTO" rename column "CIDADE_DEPARTAMENTO" to cidade
-------------------------------------------------------------------
CREATE TABLE TB_PROJETO
(cod_projeto varchar(5)
,nome_projeto varchar(50)
,orcamento_projeto float
,data_inicio_projeto date
,cod_departamento varchar(5)
,PRIMARY KEY (cod_projeto));

ALTER TABLE TB_PROJETO
ADD CONSTRAINT FK_DEPARTAMENTO 
FOREIGN KEY (cod_departamento) REFERENCES TB_DEPARTAMENTO (cod_departamento);

alter table "SYSTEM"."TB_PROJETO" rename column "ORCAMENTO_PROJETO" to orcamento;
alter table "SYSTEM"."TB_PROJETO" rename column "DATA_INICIO_PROJETO" to data_inicio;
-------------------------------------------------------------------
CREATE TABLE TB_FUNCIONARIO
(cod_funcionario varchar(5)
,nome_funcionario varchar(50)
,data_admissao date
,cod_departamento varchar(5)
,PRIMARY KEY (cod_funcionario));

ALTER TABLE TB_FUNCIONARIO
ADD CONSTRAINT FK_DEPARTAMENTO_FUNCIONARIO
FOREIGN KEY (cod_departamento) REFERENCES TB_DEPARTAMENTO (cod_departamento);
-------------------------------------------------------------------
CREATE TABLE TB_DEPENDENTE
(cod_dependente varchar(5)
,nome_dependente varchar(50)
,tipo_dependencia varchar(50)
,idade_dependente integer
,cod_funcionario varchar(5)
,PRIMARY KEY (cod_dependente));

ALTER TABLE TB_DEPENDENTE
ADD CONSTRAINT FK_FUNCIONARIO 
FOREIGN KEY (cod_funcionario) REFERENCES TB_FUNCIONARIO (cod_funcionario);

alter table "SYSTEM"."TB_DEPENDENTE" rename column "TIPO_DEPENDENCIA" to tipo;
alter table TB_DEPENDENTE rename column IDADE_DEPENDENTE to idade;
