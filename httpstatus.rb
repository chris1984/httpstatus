require 'sinatra'
require 'rack'

class HttpStatus < Sinatra::Base
  get "/" do
    [200, {}, "Hello from Sinatra!"]
  end
end