# frozen_string_literal: true

# Request data from Vital Signs API
class VitalSignsGateway
  class << self
    def life_expectancy
      response = HTTParty.get(Settings.vital_signs.life_expectancy_url, headers: headers)
      JSON.parse(response.body, symbolize_names: true)
    end

    def headers
      {
        'X-App-Token' => Settings.vital_signs.app_token
      }
    end
  end
end
