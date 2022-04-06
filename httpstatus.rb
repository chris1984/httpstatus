# frozen_string_literal: true

require 'sinatra'
require 'rack'
require './routes/info'
require './routes/success'
require './routes/redirect'
require './routes/client'
require './routes/server'

# Main class for the app
class HttpStatus < Sinatra::Base
end
