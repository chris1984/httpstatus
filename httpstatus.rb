# frozen_string_literal: true

require 'sinatra'
require 'rack'

# Main class for the app
class HttpStatus < Sinatra::Base # rubocop:disable Metrics/ClassLength
  # Information responses
  get '/100' do
    [100, {}, '100 Continue']
  end

  get '/101' do
    [101, {}, '101 Switching Protocols']
  end

  get '/102' do
    [102, {}, '102 Processing']
  end

  get '/103' do
    [103, {}, '103 Early Hints']
  end

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

  # Redirection messages
  get '/300' do
    [300, {}, '300 Multiple Choices']
  end

  get '/301' do
    [301, {}, '301 Moved Permanently']
  end

  get '/302' do
    [302, {}, '302 Found']
  end

  get '/303' do
    [303, {}, '303 See Other']
  end

  get '/304' do
    [304, {}, '304 Not Modified']
  end

  get '/305' do
    [305, {}, '305 Use Proxy']
  end

  get '/306' do
    [306, {}, '306 Unused']
  end

  get '/307' do
    [307, {}, '307 Temporary Redirect']
  end

  get '/308' do
    [308, {}, '308 Permanent Redirect']
  end

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
