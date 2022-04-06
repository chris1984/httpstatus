# frozen_string_literal: true

# Extending main class to include routes
class HttpStatus < Sinatra::Base
  # Successful responses
  get '/200' do
    [200, {}, '200 OK']
  end

  get '/201' do
    [201, {}, '201 Created']
  end

  get '/202' do
    [202, {}, '202 Accepted']
  end

  get '/203' do
    [203, {}, '203 Non-Authoritative Information']
  end

  get '/204' do
    [204, {}, '204 No Content']
  end

  get '/205' do
    [205, {}, '205 Reset Content']
  end

  get '/206' do
    [206, {}, '206 Partial Content']
  end

  get '/207' do
    [207, {}, '207 Multi-Status']
  end

  get '/208' do
    [208, {}, '208 Already Reported']
  end

  get '/226' do
    [226, {}, '226 IM Used']
  end
end
