# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default)

require File.dirname(__FILE__) + '/httpstatus.rb'

map '/' do
  run HttpStatus
end
