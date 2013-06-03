require 'sinatra/base'

class Web < Sinatra::Base

  # Show an HTML page that displays the current state
  get '/led' do
    @led_state = @@led_state || 'unknown'
    erb :led
  end

  # Return a text body with the state
  get '/led-state' do
    @@led_state
  end

  # Set the led state
  post '/led' do
    @@led_state = request.body.read
  end
end
