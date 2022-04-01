# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require 'httpstatus'
require 'rspec'
require 'rack/test'
require 'response_code_matchers'
describe 'HTTP Status' do # rubocop:disable Metrics/BlockLength
  include Rack::Test::Methods

  def app
    HttpStatus.new
  end

  # Information responses

  it 'tries 100 code' do
    get '/100'
    expect(last_response.body).to eq('100 Continue')
    expect(last_response.status).to eq 100
  end

  it 'tries 101 code' do
    get '/101'
    expect(last_response.body).to eq('101 Switching Protocols')
    expect(last_response.status).to eq 101
  end

  it 'tries 102 code' do
    get '/102'
    expect(last_response.body).to eq('102 Processing')
    expect(last_response.status).to eq 102
  end

  it 'tries 103 code' do
    get '/103'
    expect(last_response.body).to eq('103 Early Hints')
    expect(last_response.status).to eq 103
  end

  # Successful responses

  it 'tries 200 code' do
    get '/200'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('200 OK')
    expect(last_response.status).to eq 200
  end

  it 'tries 201 code' do
    get '/201'
    expect(last_response.body).to eq('201 Created')
    expect(last_response.status).to eq 201
  end

  it 'tries 202 code' do
    get '/202'
    expect(last_response.body).to eq('202 Accepted')
    expect(last_response.status).to eq 202
  end

  it 'tries 203 code' do
    get '/203'
    expect(last_response.body).to eq('203 Non-Authoritative Information')
    expect(last_response.status).to eq 203
  end

  it 'tries 204 code' do
    get '/204'
    puts last_response.inspect
    expect(last_response.body).to eq('204 No Content')
    expect(last_response.status).to eq 204
  end

  it 'tries 205 code' do
    get '/205'
    expect(last_response.body).to eq('205 Reset Content')
    expect(last_response.status).to eq 205
  end

  it 'tries 206 code' do
    get '/206'
    expect(last_response.body).to eq('206 Partial Content')
    expect(last_response.status).to eq 206
  end

  it 'tries 207 code' do
    get '/207'
    expect(last_response.body).to eq('207 Multi-Status')
    expect(last_response.status).to eq 207
  end

  it 'tries 208 code' do
    get '/208'
    expect(last_response.body).to eq('208 Already Reported')
    expect(last_response.status).to eq 208
  end

  it 'tries 226 code' do
    get '/226'
    expect(last_response.body).to eq('226 IM Used')
    expect(last_response.status).to eq 226
  end

  # Redirection messages

  it 'tries 300 code' do
    get '/300'
    expect(last_response.body).to eq('300 Multiple Choices')
    expect(last_response.status).to eq 300
  end

  it 'tries 301 code' do
    get '/301'
    expect(last_response.body).to eq('301 Moved Permanently')
    expect(last_response.status).to eq 301
  end

  it 'tries 302 code' do
    get '/302'
    expect(last_response.body).to eq('302 Found')
    expect(last_response.status).to eq 302
  end

  it 'tries 303 code' do
    get '/303'
    expect(last_response.body).to eq('303 See Other')
    expect(last_response.status).to eq 303
  end

  it 'tries 304 code' do
    get '/304'
    expect(last_response.body).to eq('304 Not Modified')
    expect(last_response.status).to eq 304
  end

  it 'tries 305 code' do
    get '/305'
    expect(last_response.body).to eq('305 Use Proxy')
    expect(last_response.status).to eq 305
  end

  it 'tries 306 code' do
    get '/306'
    expect(last_response.body).to eq('306 Unused')
    expect(last_response.status).to eq 306
  end

  it 'tries 307 code' do
    get '/307'
    expect(last_response.body).to eq('307 Temporary Redirect')
    expect(last_response.status).to eq 307
  end

  it 'tries 308 code' do
    get '/308'
    expect(last_response.body).to eq('308 Permanent Redirect')
    expect(last_response.status).to eq 308
  end

  # Client error responses

  it 'tries 400 code' do
    get '/400'
    expect(last_response.body).to eq('400 Bad Request')
    expect(last_response.status).to eq 400
  end

  it 'tries 401 code' do
    get '/401'
    expect(last_response.body).to eq('401 Unauthorized')
    expect(last_response.status).to eq 401
  end

  it 'tries 402 code' do
    get '/402'
    expect(last_response.body).to eq('402 Payment Required')
    expect(last_response.status).to eq 402
  end

  it 'tries 403 code' do
    get '/403'
    expect(last_response.body).to eq('403 Forbidden')
    expect(last_response.status).to eq 403
  end

  it 'tries 404 code' do
    get '/404'
    expect(last_response.body).to eq('404 Not Found')
    expect(last_response.status).to eq 404
  end

  it 'tries 405 code' do
    get '/405'
    expect(last_response.body).to eq('405 Method Not Allowed')
    expect(last_response.status).to eq 405
  end

  it 'tries 406 code' do
    get '/406'
    expect(last_response.body).to eq('406 Not Acceptable')
    expect(last_response.status).to eq 406
  end

  it 'tries 407 code' do
    get '/407'
    expect(last_response.body).to eq('407 Proxy Authentication Required')
    expect(last_response.status).to eq 407
  end

  it 'tries 408 code' do
    get '/408'
    expect(last_response.body).to eq('408 Request Timeout')
    expect(last_response.status).to eq 408
  end

  it 'tries 409 code' do
    get '/409'
    expect(last_response.body).to eq('409 Conflict')
    expect(last_response.status).to eq 409
  end

  it 'tries 410 code' do
    get '/410'
    expect(last_response.body).to eq('410 Gone')
    expect(last_response.status).to eq 410
  end

  it 'tries 411 code' do
    get '/411'
    expect(last_response.body).to eq('411 Length Required')
    expect(last_response.status).to eq 411
  end

  it 'tries 412 code' do
    get '/412'
    expect(last_response.body).to eq('412 Precondition Failed')
    expect(last_response.status).to eq 412
  end

  it 'tries 413 code' do
    get '/413'
    expect(last_response.body).to eq('413 Payload Too Large')
    expect(last_response.status).to eq 413
  end

  it 'tries 414 code' do
    get '/414'
    expect(last_response.body).to eq('414 URI Too Long')
    expect(last_response.status).to eq 414
  end

  it 'tries 415 code' do
    get '/415'
    expect(last_response.body).to eq('415 Unsupported Media Type')
    expect(last_response.status).to eq 415
  end

  it 'tries 416 code' do
    get '/416'
    expect(last_response.body).to eq('416 Range Not Satisfiable')
    expect(last_response.status).to eq 416
  end

  it 'tries 417 code' do
    get '/417'
    expect(last_response.body).to eq('417 Expectation Failed')
    expect(last_response.status).to eq 417
  end

  it 'tries 418 code' do
    get '/418'
    expect(last_response.body).to eq("418 I'm a teapot")
    expect(last_response.status).to eq 418
  end

  it 'tries 421 code' do
    get '/421'
    expect(last_response.body).to eq('421 Misdirected Request')
    expect(last_response.status).to eq 421
  end

  it 'tries 422 code' do
    get '/422'
    expect(last_response.body).to eq('422 Unprocessable Entity')
    expect(last_response.status).to eq 422
  end

  it 'tries 423 code' do
    get '/423'
    expect(last_response.body).to eq('423 Locked')
    expect(last_response.status).to eq 423
  end

  it 'tries 424 code' do
    get '/424'
    expect(last_response.body).to eq('424 Failed Dependency')
    expect(last_response.status).to eq 424
  end

  it 'tries 425 code' do
    get '/425'
    expect(last_response.body).to eq('425 Too Early')
    expect(last_response.status).to eq 425
  end

  it 'tries 426 code' do
    get '/426'
    expect(last_response.body).to eq('426 Upgrade Required')
    expect(last_response.status).to eq 426
  end

  it 'tries 428 code' do
    get '/428'
    expect(last_response.body).to eq('428 Precondition Required')
    expect(last_response.status).to eq 428
  end

  it 'tries 429 code' do
    get '/429'
    expect(last_response.body).to eq('429 Too Many Requests')
    expect(last_response.status).to eq 429
  end

  it 'tries 431 code' do
    get '/431'
    expect(last_response.body).to eq('431 Request Header Fields Too Large')
    expect(last_response.status).to eq 431
  end

  it 'tries 451 code' do
    get '/451'
    expect(last_response.body).to eq('451 Unavailable For Legal Reasons')
    expect(last_response.status).to eq 451
  end

  # Server error responses

  it 'tries 500 code' do
    get '/500'
    expect(last_response.body).to eq('500 Internal Server Error')
    expect(last_response.status).to eq 500
  end

  it 'tries 501 code' do
    get '/501'
    expect(last_response.body).to eq('501 Not Implemented')
    expect(last_response.status).to eq 501
  end

  it 'tries 502 code' do
    get '/502'
    expect(last_response.body).to eq('502 Bad Gateway')
    expect(last_response.status).to eq 502
  end

  it 'tries 503 code' do
    get '/503'
    expect(last_response.body).to eq('503 Service Unavailable')
    expect(last_response.status).to eq 503
  end

  it 'tries 504 code' do
    get '/504'
    expect(last_response.body).to eq('504 Gateway Timeout')
    expect(last_response.status).to eq 504
  end

  it 'tries 505 code' do
    get '/505'
    expect(last_response.body).to eq('505 HTTP Version Not Supported')
    expect(last_response.status).to eq 505
  end

  it 'tries 506 code' do
    get '/506'
    expect(last_response.body).to eq('506 Variant Also Negotiates')
    expect(last_response.status).to eq 506
  end

  it 'tries 507 code' do
    get '/507'
    expect(last_response.body).to eq('507 Insufficient Storage')
    expect(last_response.status).to eq 507
  end

  it 'tries 508 code' do
    get '/508'
    expect(last_response.body).to eq('508 Loop Detected')
    expect(last_response.status).to eq 508
  end

  it 'tries 510 code' do
    get '/510'
    expect(last_response.body).to eq('510 Not Extended')
    expect(last_response.status).to eq 510
  end

  it 'tries 511 code' do
    get '/511'
    expect(last_response.body).to eq('511 Network Authentication Required')
    expect(last_response.status).to eq 511
  end
end
