# frozen_string_literal: true

require 'sinatra'
require 'rack'

# Main class for the app
class HttpStatus < Sinatra::Base
  get '/' do
    [200, {}, 'Hello from Sinatra!']
  end
end
