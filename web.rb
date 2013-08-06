require 'sinatra/base'

$stdout.sync = true

class Web < Sinatra::Base
  @@led_state = 'on'

  # Show an HTML page that displays the current state
  get '/' do
    puts "GET led"
    @led_state = @@led_state
    erb :led
  end

  # Return a text body with the state
  get '/led' do
    puts "GET led-state - #{@@led_state}"
    @@led_state
  end

  # Set the led state
  post '/led' do
    value = request.body.read
    puts "POST led #{value}"
    @@led_state = value
  end
end
