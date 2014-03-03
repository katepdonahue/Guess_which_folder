class Game
  PATHS = { "install.log" => ".bundle", "rails.png" => "app/assets/images", "application.js" => "app/assets/javascripts", "application.css" => "app/assets/stylesheets", "application_controller.rb" => "app/controllers", "application_helper.rb" => "app/helpers",  "application.html.erb" => "app/views/layouts", "development.rb" => "config/environments", "production.rb" => "config/environments", "test.rb" => "config/environments", "backtrace_silencers.rb" => "config/initializers", "inflections.rb" => "config/initializers", "mime_types.rb" => "config/initializers", "secret_token.rb" => "config/initializers", "session_store.rb" => "config/initializers", "wrap_parameters.rb" => "config/initializers", "en.yml" => "config/locales", "application.rb" => "config", "boot.rb" => "config", "database.yml" => "config", "environment.rb" => "config", "routes.rb" => "config", "seeds.rb" => "db", "README_FOR_APP" => "doc", "development.log" => "log", "404.html" => "public", "422.html" => "public", "500.html" => "public", "favicon.ico" => "public", "robots.txt" => "public", ".gitignore" => ".", "config.ru" => ".", "Gemfile" => ".", "Rakefile" => ".", "README.rdoc" => "." }
  
  attr_reader :question, :answer

  def initialize
    pick = PATHS.to_a.sample
    @question = pick[0]
    @answer = pick[1] #deal with .gitkeep later
  end
end