# Planejamento de tarefas no ciclo ágil

 #### Contexto:

 ##### Somos parte de uma equipe de desenvolvimento de software que está criando uma série de ferramentas para gestão de eCommerces. Neste sentido, precisamos atender algumas necessidades de gestores destas plataformas. Precisamos criar soluções para ajudar nossos gestores a extrair dados de inventários de seus respectivos estoques.

 <br>

 ## Sprints

 <br>

 ##### Recursos: 
###### Humanos: Equipe de Profes Gama, Felipe.
###### Ferramentas: Computador
###### Softwares: IDE (Visual Code Studio), NodeJS, MySQL

<br />

 ### Sprint 01 - Produto

 ##### Objetivo da Sprint: fazer com que o usuário possa ter acesso a dados básicos do estoque como quantidade de produtos cadastrados, produtos disponíveis e indisponíveis e acesso a esses produtos.

 ##### Estimativa: 3 dias.

---

| Tarefa                                      | Estimativa | Início     | Término    | Status       |
| ------------------------------------------- | :--------: | :--------- | ---------- | :----------: |
| Configuração do ambiente de desenvolvimento | 1h         | 08/05/2021 | 08/05/2021  | :red_circle: |
| Quantidade total de produtos                | 30m        | 09/05/2021 | 09/05/2021                                                               | :red_circle: |
| Listar todos os produtos                    | 45m        | 09/05/2021 | 09/05/2021                                                               | :red_circle: |
| Quantidade total de produtos disponíveis    | 25m      | 09/05/2021 | 09/05/2021                                                               | :red_circle: |
| Listar produtos disponíveis                 | 40m        | 09/05/2021 | 09/05/2021                                                               | :red_circle: |
| Quantidade total produtos indisponíveis     | 20m       | 10/05/2021 | 10/05/2021                                                               | :red_circle: |
| Listar produtos indisponíveis               | 20m        | 10/05/2021 | 10/05/2021                                                               | :red_circle: |

 <br>
 <br>

 ### Sprint 02 - Produto, novos requisitos

 ##### Objetivo da Sprint: Novos requisitos surgiram, os usuários agora querem poder filtrar os produtos listando o mais caro e o mais barato junto de seu departamento, listar produtos em destaque e seu respectivo ticket médio (soma do valor dos produtos em destaque dividido pela quantidade de produtos em destaque).

 ##### Estimativa: 2 dias

---

| Tarefa                                                   | Estimativa | Início     | Término    | Status       |
|  ---------- | :--------: | ---------- | ------------------------------------------------------------ | :----------: |
| Listar produto mais caro do estoque e seu departamento   | 55m       | 10/05/2021 | 10/05/2021 | :red_circle: |
| Listar produto mais barato do estoque e seu departamento | 30m       | 10/05/2021 | 10/05/2021                                                               | :red_circle: |
| Quantidade de produtos em destaque                       | 45m       | 10/05/2021 | 10/05/2021                                                               | :red_circle: |
| Listar produtos em destaque                             | 30m       | 10/05/2021 | 11/05/2021                                                               | :red_circle: |
| Ticket médio dos produtos em destaque                    | 30m       | 11/05/2021 | 11/05/2021                                                               | :red_circle: |

 <br>
 <br>

 ### Sprint 03 - Empresa e valor.

 ##### Objetivo da Sprint: O gestor da empresa deseja saber o valor do patrimônio de produtos contido no estoque podendo usar essa informação como forma de inventário, também deseja saber o ticket médio dos produtos em estoque (soma do valor dos produtos em estoque dividido pela quantidade de produtos).

 ##### Estimativa: 1 dia

---

| Tarefa                                                  | Estimativa | Início     | Término    |       Status       |
| ------------------------------------------------------- | :--------: | ---------- | ---------- | :----------: |
| Valor do patrimônio em produtos no estoque (inventário) | 40m      | 11/05/2021 | 11/05/2021 |       :red_circle: |
| Ticket médio do total de produtos em estoque.           | 35m      | 11/05/2021 | 11/05/2021 |       :red_circle: |

 <br>
 <br>

 ### Sprint 04 - Departamentos

 ##### Objetivo da Sprint: Levantar dados referente aos produtos de determinado departamentos, poder mensurar o ticket médio do departamento e saber o departamento de maior valor agregado (somando o valor de todos os produtos de um departamento X a quantidade dos respectivos em estoque).

 ##### Estimativa: 2 dias

---

| Tarefa                                                | Estimativa | Início     | Término    |       Status       |
| ----------------------------------------------------- | :--------: | ---------- | -------------- | :----------: |
| Quantidade total de itens de um departamento          | 45m    | 12/05/2021 | 12/05/2021 |       :red_circle: |
| Listar quantidade total de itens de um departamento.  | 50m    | 12/05/2021 | 12/05/2021 |       :red_circle: |
| Levantar inventário de um departamento.               | 25m       | 12/05/2021 | 12/05/2021 |       :red_circle: |
| Ticket médio do total de produtos de um departamento. | 20m        | 12/05/2021 | 12/05/2021 |       :red_circle: |
| Descobrir departamento mais valioso.                  | 20m        | 13/05/2021 | 13/05/2021 |       :red_circle: |
| Listar produto mais caro de um departamento           | 25m        | 13/05/2021 | 13/05/2021 |       :red_circle: |
| Listar produto mais barato de um departamento         | 15m        | 13/05/2021 | 13/05/2021 |       :red_circle: |

 <br>
 <br>

 ### Sprint 05 - Banco de dados

 ##### Objetivo da Sprint: Fazer a criação do banco de dados, modelagem de toda a estrutura de dados trabalhados no sistema, com suas respectivas relações e realizar dumps específicos do banco de dados

 ##### Estimativa:  5 dias.

---

| Tarefa                                        | Estimativa | Início     | Término    |       Status       |
| --------------------------------------------- | :--------: | ---------- | ---------- |  :----------: |
| Configuração do MySQL                         | 1:30h      | 16/05/2021 | 16/05/2021 |       :red_circle: |
| Modelar dados de produtos e departamentos     | 4:00h      | 16/05/2021 | 17/05/2021 |       :red_circle: |
| Criar relações entre produtos e departamentos | 2:00h      | 17/05/2021 | 18/05/2021 |       :red_circle: |
| Modelar dados de clientes                     | 2:50h      | 18/05/2021 | 18/05/2021 |       :red_circle: |
| Modelar dados de pedidos                      | 3:30h     | 19/05/2021 | 19/05/2021 |       :red_circle: |
| Criar relações entre clientes e pedidos       | 2:00h      | 19/05/2021 | 19/05/2021 |       :red_circle: |
| Popular banco                                 | 1:00h      | 19/05/2021 | 19/05/2021 |       :red_circle: |
| Realizar dumps do banco de dados | 6:00h | 20/05/2021 | 20/05/2021 | :red_circle: |



 <br>
 <br>

-------

 <br>
