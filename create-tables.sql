CREATE TABLE CATEGORIA(
   ID INT PRIMARY KEY NOT NULL,
   DESCRICAO VARCHAR(50)
);

CREATE TABLE ESTRELA(
    ID INT PRIMARY KEY NOT NULL,
    NOME VARCHAR(50),
    SOBRENOME VARCHAR(150),
    NOME_REAL VARCHAR (200)
);

CREATE TABLE CLIENTE(
    ID INT PRIMARY KEY NOT NULL,
    NOME VARCHAR(50),
    SOBRENOME VARCHAR(150),
    TELEFONE VARCHAR(15),
    LOGRADOURO VARCHAR(100),
    CIDADE VARCHAR(100),
    ESTADO VARCHAR(50),
    CEP VARCHAR(10)
);

CREATE TABLE FILME(
    ID INT PRIMARY KEY NOT NULL,
    TITULO VARCHAR(200),
    DURACAO_EM_MIN INT,
    VALOR_ALUGUEL FLOAT,
    NUM_DISCO INT,
    CATEGORIA_ID INT,
    
    FOREIGN KEY(CATEGORIA_ID) REFERENCES CATEGORIA(ID)
);

CREATE TABLE FILME_ESTRELA(
    ID INT PRIMARY KEY NOT NULL,
    FILME_ID INT,
    ESTRELA_ID INT,
    
    FOREIGN KEY(FILME_ID) REFERENCES FILME(ID),
    FOREIGN KEY(ESTRELA_ID) REFERENCES ESTRELA(ID)
);

CREATE TABLE EMPRESTIMO(
    ID INT PRIMARY KEY NOT NULL,
    FILME_ID INT,
    CLIENTE_ID INT,
    DATA_EMPRESTIMO DATE,
    DATA_DEVOLUCAO DATE,
    QTD_DISCO INT,
    VALOR_TOTAL FLOAT,
    
    FOREIGN KEY(FILME_ID) REFERENCES FILME(ID),
    FOREIGN KEY(CLIENTE_ID) REFERENCES CLIENTE(ID)
);

CREATE TABLE BAIXA_EMPRESTIMO(
    ID INT PRIMARY KEY NOT NULL,
    EMPRESTIMO_ID INT,
    DATA_BAIXA DATE,
    JUROS FLOAT,
    DESCONTOS FLOAT,
    VALOR_A_PAGAR FLOAT,
    
    FOREIGN KEY (EMPRESTIMO_ID) REFERENCES EMPRESTIMO(ID)
);