class LifeExpectancyController < ApplicationController
  def index
    @dataset = VitalSignsGateway.life_expectancy
  end
end
