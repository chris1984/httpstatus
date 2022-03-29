ENV['RACK_ENV'] = 'test'

require 'httpstatus'
require 'rspec'
require 'rack/test'

describe 'HTTP Status' do
  include Rack::Test::Methods

  def app
    HttpStatus.new
  end

  it "tries 200 code" do
    get '/200'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('200 OK')
    expect(last_response.status).to eq 200
  end
end
