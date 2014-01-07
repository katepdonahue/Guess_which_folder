require 'bundler'
Bundler.require
require './lib/game'


class App < Sinatra::Application

  configure do
    Compass.configuration do |config|
      config.project_path = File.dirname(__FILE__)
      config.sass_dir = 'views'
    end

    set :haml, { :formt => :html5 }
    set :scss, Compass.sass_engine_options
  end

  get '/stylesheet.css' do
    scss :input
  end

  @@this_game = Game.new

  get '/' do
    @question = @@this_game.question
    haml :index
  end

  post '/' do
    @result = (@@this_game.answer == params["filepath"])
    haml :index
  end
 
end



