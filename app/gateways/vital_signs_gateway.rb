class VitalSignsGateway
  class << self
    def life_expectancy
      response = HTTParty.get(life_expectancy_uri)
      JSON.parse(response.body, symbolize_names: true)
    end

    def life_expectancy_uri
      'https://data.bayareametro.gov/resource/g26a-g4jw.json'
    end
  end
end
