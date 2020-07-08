class LifeExpectancyController < ApplicationController
  def index
    @dataset = VitalSignsGateway.life_expectancy
    @chart_data = chart_data
  end

  def chart_data
    # Chartkick format example:
    # [{ name: 'Napa County', data: {'2000' => '78', '2001' => 79 } }]
    @dataset.group_by { |d| d[:county] }.map do |county_name, county_data|
      {
        name: county_name,
        data: county_data.reduce({}) { |hash, d| hash.merge(d[:year] => d[:life_expectancy]) }.sort
      }
    end
  end
end
