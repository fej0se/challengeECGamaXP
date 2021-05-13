# Planejamento de tarefas no ciclo ágil

##### Time: Felipe José

 #### Contexto:

 ##### Somos parte de uma equipe de desenvolvimento de software que está criando uma série de ferramentas para gestão de eCommerces. Neste sentido, precisamos atender algumas necessidades de gestores destas plataformas. Precisamos criar soluções para ajudar nossos gestores a extrair dados de inventários de seus respectivos estoques.

 <br>

 ## Sprints


 ##### Recursos: 
###### Humanos: Equipe de Profes Gama, Felipe.
###### Ferramentas: Computador
###### Softwares: IDE (Visual Code Studio), NodeJS, MySQL

<br />

 ### Sprint 01 - Produto

 ##### Objetivo da Sprint: Desenvolver códigos em JavaScript fazendo com que os gestores possam ter acesso a dados básicos do estoque como quantidade de produtos cadastrados, produtos disponíveis e indisponíveis e acesso a esses produtos.
<br>

 ##### Estimativa: 3 dias
 ##### Status da Sprint: Done :heavy_check_mark:


| Tarefa                                      | Estimativa | Início     | Término    | Status       |
| ------------------------------------------- | :--------: | :--------- | ---------- | :----------: |
| Configuração do ambiente de desenvolvimento | 1h         | 08/05/2021 | 08/05/2021  | :white_check_mark: |
| Quantidade total de produtos cadastrados                | 30m        | 09/05/2021 | 09/05/2021                                                               | :white_check_mark: |
| Listar todos os produtos                    | 45m        | 09/05/2021 | 09/05/2021                                                               | :white_check_mark: |
| Quantidade total de produtos disponíveis    | 25m      | 09/05/2021 | 09/05/2021                                                               | :white_check_mark: |
| Listar produtos disponíveis                 | 40m        | 09/05/2021 | 09/05/2021                                                               | :white_check_mark: |
| Quantidade total produtos indisponíveis     | 20m       | 10/05/2021 | 10/05/2021                                                               | :white_check_mark: |
| Listar produtos indisponíveis               | 20m        | 10/05/2021 | 10/05/2021                                                               | :white_check_mark: |

---
 <br>

 ### Sprint 02 - Produto, novos requisitos

 ##### Objetivo da Sprint: Novos requisitos surgiram, deverá ser desenvolvido novos códigos em JavaScript onde os gestores agora possam filtrar os produtos listando o mais caro e o mais barato junto de seu departamento, listar produtos em destaque e seu respectivo ticket médio (soma do valor dos produtos em destaque dividido pela quantidade de produtos em destaque).
<br>

 ##### Estimativa: 2 dias
 ##### Status da Sprint: Pendente


| Tarefa                                                   | Estimativa | Início     | Término    | Status       |
|  ---------- | :--------: | ---------- | ------------------------------------------------------------ | :----------: |
| Listar produto mais caro do estoque e seu departamento   | 55m       | 10/05/2021 | 10/05/2021 | :white_check_mark: |
| Listar produto mais barato do estoque e seu departamento | 30m       | 10/05/2021 | 10/05/2021                                                               | :white_check_mark: |
| Quantidade de produtos em destaque                       | 45m       | 10/05/2021 | 10/05/2021                                                               | :white_check_mark: |
| Listar produtos em destaque                             | 30m       | 10/05/2021 | 11/05/2021                                                               | :white_check_mark: |
| Ticket médio dos produtos em destaque                    | 30m       | 11/05/2021 | 11/05/2021                                                               | :white_check_mark: |

---
 <br>

 ### Sprint 03 - Empresa e valor.

 ##### Objetivo da Sprint: Desenvolver novos códigos em JavaScript onde os gestores agora possam saber o valor do patrimônio de produtos contido no estoque podendo usar essa informação como forma de inventário, também é desejado saber o ticket médio dos produtos em estoque (soma do valor dos produtos em estoque dividido pela quantidade de produtos).
<br>

 ##### Estimativa: 1 dia
 ##### Status da Sprint: Pendente


| Tarefa                                                  | Estimativa | Início     | Término    |       Status       |
| ------------------------------------------------------- | :--------: | ---------- | ---------- | :----------: |
| Valor do patrimônio em produtos no estoque (inventário) | 40m      | 11/05/2021 | 11/05/2021 |       :white_check_mark: |
| Ticket médio do total de produtos em estoque.           | 35m      | 11/05/2021 | 11/05/2021 |       :white_check_mark: |

---
 <br>

 ### Sprint 04 - Departamentos

 ##### Objetivo da Sprint: Os gestores agora querem poder ter um controle maior do estoque de acordo com os departamentos da empresa, deve ser desenvolvido novos códigos em Javascript para levantar dados referente aos produtos de determinado departamentos, como total de produtos de um departamento, poder mensurar o ticket médio do departamento e saber o departamento de maior valor agregado (somando o valor de todos os produtos de um departamento X a quantidade dos respectivos em estoque).
<br>

 ##### Estimativa: 2 dias
 ##### Status da Sprint: Pendente


| Tarefa                                                | Estimativa | Início     | Término    |       Status       |
| ----------------------------------------------------- | :--------: | ---------- | -------------- | :----------: |
| Quantidade total de produtos por departamento          | 45m    | 12/05/2021 | 12/05/2021 |       :white_check_mark: |
| Listar quantidade total de produtos de um departamento.  | 50m    | 12/05/2021 | 12/05/2021 |       :white_check_mark: |
| Levantar inventário de um departamento.               | 25m       | 12/05/2021 | 12/05/2021 |       :white_check_mark: |
| Ticket médio do total de produtos de um departamento. | 20m        | 12/05/2021 | 12/05/2021 |       :white_check_mark: |
| Descobrir departamento mais valioso.                  | 20m        | 13/05/2021 | 13/05/2021 |       :white_check_mark: |
| Listar produto mais caro de um departamento           | 25m        | 13/05/2021 | 13/05/2021 |       :white_check_mark: |
| Listar produto mais barato de um departamento         | 15m        | 13/05/2021 | 13/05/2021 |       :white_check_mark: |

---
 <br>

 ### Sprint 05 - Banco de dados


 ##### Objetivo da Sprint: Agora que os scripts foram gerados deve-se fazer:
#####    A criação do banco de dados para armazenagem desses dados, modelagem de toda a estrutura do estoque (produtos/departamentos), com suas respectivas relações
#####    Deve-se também fazer a modelagem de dados dos clientes da empresa (com os seguintes dados obrigatórios: nome, email, whatsapp e senha. E seus endereços que podem ser 1 ou mais com os seguintes dados obrigatórios: Tipo do logradouro, logradouro, número, complemento, cep, bairro, cidade e estado)
#####    A modelagem dos dados de pedidos onde deve-se conter dados mínimos como: número pedido, valor total do pedido, data compra, produtos comprados, quantidade, valor unitátio, valor total do produto X quantidade e status dos pedidos (novo pedido, cancelado, aguardando pagamento, pagamento autorizado, pagamento negado, em separação, em transporte, entregue. 
#####    Fazer a relação entre clientes e pedidos
#####    Realizar dumps específicos do banco de dados.

<br>

 ##### Estimativa:  5 dias
 ##### Status da Sprint: Pendente



| Tarefa                                        | Estimativa | Início     | Término    |       Status       |
| --------------------------------------------- | :--------: | ---------- | ---------- |  :----------: |
| Configuração do MySQL                         | 1:30h      | 16/05/2021 | 16/05/2021 |       :red_circle: |
| Modelar dados de produtos e departamentos     | 4:00h      | 16/05/2021 | 17/05/2021 |       :red_circle: |
| Criar relações entre produtos e departamentos | 2:00h      | 17/05/2021 | 18/05/2021 |       :red_circle: |
| Modelar dados de clientes                     | 2:50h      | 18/05/2021 | 18/05/2021 |       :red_circle: |
| Modelar dados de pedidos                      | 3:30h     | 19/05/2021 | 19/05/2021 |       :red_circle: |
| Criar relações entre clientes e pedidos       | 2:00h      | 19/05/2021 | 19/05/2021 |       :red_circle: |
| Popular banco                                 | 4:00h      | 19/05/2021 | 20/05/2021 |       :red_circle: |
| Realizar dumps do banco de dados | 2:00h | 20/05/2021 | 20/05/2021 | :red_circle: |


---
 <br>


###### Legenda:
<table>
  <tr>
   <td colspan="2">Status</td>
  </tr>
  <tr>
    <td>✅</td>
    <td>Entregue</td>
  </tr>
   <tr>
    <td>🔴</td>
    <td>Pendente</td>
  </tr>
</table>
