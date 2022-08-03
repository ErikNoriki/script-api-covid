#language: pt
@Covid
Funcionalidade: Retornar total de número de casos do Covid19 de um país em específico.
-Como um usuário do sistema
-Eu quero verificar as estatísticas do Covid-19 no Brasil
-Para validar e consultar as informações apresentadas pela API

Cenario: Retornar o total de número de casos do Covid19 no Brasil.
Dado que possuo a Url da API para consultar o número de casos do Covid19
Quando realizar uma requisição com parâmetro de busca: Brazil
Então a API irá retornar os dados dos números de casos do Covid19 no Brasil respondendo o código 200