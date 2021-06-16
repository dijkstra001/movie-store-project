# Projeto: Locadora de Filmes 📺

### Desafio:

Uma pequena locadora de vídeos possui ao redor de 2000 DVDs, cujo empréstimo deve ser controlado. Cada DVD
possui um número de identificação e contém um único filme. Cada filme recebe um identificador próprio, e sabe-se
título e categoria (comédia, drama, aventura, …).

Para cada filme cadastrado há pelo menos um DVD. Além disso, filmes mais longos necessitam de dois DVDs. Os
clientes podem desejar encontrar os filmes estrelados pelo seu ator predileto. Por isso, é necessário manter a informação
dos atores que estrelam em cada filme, mas nem todo filme possui estrelas.

Muitos clientes, quando vêem a listagem de atores do filme escolhido, ficam interessados em saber, para um
determinado ator, o seu nome real e de quais outros filmes do mesmo gênero aquele ator participou. A locadora possui
muitos clientes cadastrados, dos quais sabe-se nome, sobrenome, telefone e endereço de contato. Além disso, cada
cliente recebe um número de associado.

Finalmente o sistema deve permitir a consulta a empréstimos de DVDs, com informações de qual cliente alugou o quê,
datas de empréstimo e devolução, valor pago ou a pagar, atrasos, etc.

### Diagrama Entidade-Relacionamento:

![alt text](https://github.com/dijkstra001/movie-store-project/blob/main/ER-diagram.png?raw=true)

### Scripts SQL's (para o SGBD Postgres):

##### 1 - [CRIAÇÃO DAS TABELAS](https://github.com/dijkstra001/movie-store-project/blob/main/create-table.sql)

##### 2 - [INSERÇÃO DE DADOS](https://github.com/dijkstra001/movie-store-project/blob/main/insert-data.sql)

##### 3 - [CRIAÇÃO DE VISUALIZAÇÕES](https://github.com/dijkstra001/movie-store-project/blob/main/create-views.sql)

##### 4 - [VALIDAÇÃO DA REGRA DE NEGÓCIO](https://github.com/dijkstra001/movie-store-project/blob/main/business-rules-validation.sql)

<img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?&style=for-the-badge&logo=postgresql&logoColor=white"/> 


