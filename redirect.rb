# frozen_string_literal: true

# Extending main class to include routes
class HttpStatus < Sinatra::Base
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
end
