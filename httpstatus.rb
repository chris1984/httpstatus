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
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, File.expand_path('../public', __FILE__)

  get '/' do
    erb :index
  end
end
