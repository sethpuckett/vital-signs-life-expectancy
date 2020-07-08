class VitalSignsGateway
  class << self
    def life_expectancy
      response = HTTParty.get(life_expectancy_uri, headers: headers)
      JSON.parse(response.body, symbolize_names: true)
    end

    def headers
      {
        "Content-Type": 'application/json',
        "Accept": 'application/json'
      }
    end

    def life_expectancy_uri
      'https://data.bayareametro.gov/resource/g26a-g4jw.json'
    end
  end
end
