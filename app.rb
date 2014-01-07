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

  get '/' do
    @@this_game = Game.new
    @question = @@this_game.question
    haml :index
  end

  post '/' do
    @question = @@this_game.question
    @answer = @@this_game.answer
    @result = (@answer == params["filepath"])
    haml :index
  end
 
end



