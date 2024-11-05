SELECT * FROM CLIENTES;

--alterar o tipo de dado de uma coluna
ALTER TABLE CLIENTES MODIFY ENDERECO VARCHAR(150);

--Como saber o tipo de dado das colunas da tabela:
SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH 
FROM USER_TAB_COLUMNS 
WHERE TABLE_NAME = 'CLIENTES';

--Para importar os dados, clique em cima do nome da tabela com o direito do mouse > importar dados
--Siga os passos e faça a correspondência das colunas da tabela e com o arquivo
--Se der erro do tamanho dos campos, execute os comandos acima para aumentar o tamanho do campo
--Se já tiver inserido alguns registros, pule a quantidade de registros na primeira tela da importação.


