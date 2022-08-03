Dado('que possuo a Url da API para consultar o número de casos do Covid19') do
    #Já instanciado na classe BaseUrl
end
  
Quando('realizar uma requisição com parâmetro de busca: Brazil') do
    #Utilização do Page Object model para tornar a url da API global, facilitando na reutilização da Url em outro cenário de teste
    @BaseUrl = BaseUrl.new
    $response = @BaseUrl.getCovidBrazil
end
  
Então('a API irá retornar os dados dos números de casos do Covid19 no Brasil respondendo o código {int}') do |int|
    #Valida se a API retornou status code 200
    expect($response.code).to eq 200
    #Valida se o país retornado é 'Brazil'
    expect($response.parsed_response['country']).to eq 'Brazil'
    expect($response.parsed_response['countryInfo']['iso2']).to eq 'BR'
    #Valida o teste de contrato com o framework json_matcher
    expect($response.body).to match_json_schema('responseCovidBrazil')
end