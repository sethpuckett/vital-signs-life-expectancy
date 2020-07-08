# frozen_string_literal: true

class LifeExpectancyController < ApplicationController
  def index
    @dataset = VitalSignsGateway.life_expectancy
  end
end