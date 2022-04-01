# frozen_string_literal: true

require 'rspec'
require 'rack/test'
require 'response_code_matchers'
require 'coveralls'
Coveralls.wear!


RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include ResponseCodeMatchers
end
