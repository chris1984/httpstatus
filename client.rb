# frozen_string_literal: true

# Extending main class to include routes
class HttpStatus < Sinatra::Base
  # Client error responses
  get '/400' do
    [400, {}, '400 Bad Request']
  end

  get '/401' do
    [401, {}, '401 Unauthorized']
  end

  get '/402' do
    [402, {}, '402 Payment Required']
  end

  get '/403' do
    [403, {}, '403 Forbidden']
  end

  get '/404' do
    [404, {}, '404 Not Found']
  end

  get '/405' do
    [405, {}, '405 Method Not Allowed']
  end

  get '/406' do
    [406, {}, '406 Not Acceptable']
  end

  get '/407' do
    [407, {}, '407 Proxy Authentication Required']
  end

  get '/408' do
    [408, {}, '408 Request Timeout']
  end

  get '/409' do
    [409, {}, '409 Conflict']
  end

  get '/410' do
    [410, {}, '410 Gone']
  end

  get '/411' do
    [411, {}, '411 Length Required']
  end

  get '/412' do
    [412, {}, '412 Precondition Failed']
  end

  get '/413' do
    [413, {}, '413 Payload Too Large']
  end

  get '/414' do
    [414, {}, '414 URI Too Long']
  end

  get '/415' do
    [415, {}, '415 Unsupported Media Type']
  end

  get '/416' do
    [416, {}, '416 Range Not Satisfiable']
  end

  get '/417' do
    [417, {}, '417 Expectation Failed']
  end

  get '/418' do
    [418, {}, "418 I'm a teapot"]
  end

  get '/421' do
    [421, {}, '421 Misdirected Request']
  end

  get '/422' do
    [422, {}, '422 Unprocessable Entity']
  end

  get '/423' do
    [423, {}, '423 Locked']
  end

  get '/424' do
    [424, {}, '424 Failed Dependency']
  end

  get '/425' do
    [425, {}, '425 Too Early']
  end

  get '/426' do
    [426, {}, '426 Upgrade Required']
  end

  get '/428' do
    [428, {}, '428 Precondition Required']
  end

  get '/429' do
    [429, {}, '429 Too Many Requests']
  end

  get '/431' do
    [431, {}, '431 Request Header Fields Too Large']
  end

  get '/451' do
    [451, {}, '451 Unavailable For Legal Reasons']
  end
end
