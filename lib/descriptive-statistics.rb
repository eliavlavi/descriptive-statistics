require "descriptive-statistics/version"
require 'descriptive-statistics/central-tendency'
require 'descriptive-statistics/dispersion'
require 'descriptive-statistics/spread'

class DescriptiveStatistics
  extend Forwardable
  include CentralTendency
  include Dispersion
  include Spread

  def initialize(data)
    @data = data
  end

  def_delegators :@data, :length, :inject, :sort, :each_with_object
end
