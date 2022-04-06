# frozen_string_literal: true

require 'sinatra'
require 'rack'
require_relative './info'
require_relative './success'
require_relative './redirect'
require_relative './client'
require_relative './server'

# Main class for the app
class HttpStatus < Sinatra::Base
end
