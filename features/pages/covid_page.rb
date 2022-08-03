class BaseUrl
    include HTTParty
    base_uri 'https://disease.sh/v3/covid-19'
    format :json

    def getCovidBrazil  
        self.class.get('/countries/Brazil')
    end
end
