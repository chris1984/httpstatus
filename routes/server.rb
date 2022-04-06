# frozen_string_literal: true

# Extending main class to include routes
class HttpStatus < Sinatra::Base
  # Server error responses
  get '/500' do
    [500, {}, '500 Internal Server Error']
  end

  get '/501' do
    [501, {}, '501 Not Implemented']
  end

  get '/502' do
    [502, {}, '502 Bad Gateway']
  end

  get '/503' do
    [503, {}, '503 Service Unavailable']
  end

  get '/504' do
    [504, {}, '504 Gateway Timeout']
  end

  get '/505' do
    [505, {}, '505 HTTP Version Not Supported']
  end

  get '/506' do
    [506, {}, '506 Variant Also Negotiates']
  end

  get '/507' do
    [507, {}, '507 Insufficient Storage']
  end

  get '/508' do
    [508, {}, '508 Loop Detected']
  end

  get '/510' do
    [510, {}, '510 Not Extended']
  end

  get '/511' do
    [511, {}, '511 Network Authentication Required']
  end
end
