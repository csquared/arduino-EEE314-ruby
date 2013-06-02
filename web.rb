require 'sinatra/base'

class Web < Sinatra::Base
  get '*' do
    'hello'
  end
end
