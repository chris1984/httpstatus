# frozen_string_literal: true

# Extending main class to include routes
class HttpStatus < Sinatra::Base
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
end
