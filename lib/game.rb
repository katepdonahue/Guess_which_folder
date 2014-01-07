class Game
  @@paths_hash = { "install.log" => ".bundle", "rails.png" => "app/assets/images", "application.js" => "app/assets/javascripts", "application.css" => "app/assets/stylesheets", "application_controller.rb" => "app/controllers", "application_helper.rb" => "app/helpers", ".gitkeep" => ["app/mailers", "app/models", "lib/assets", "lib/tasks", "log", "test/fixtures", "test/functional", "test/integration", "vendor/assets/javascripts", "vendor/assets/stylesheets", "vendor/assets/plugins"], "application.html.erb" => "app/views/layouts", "index.html.erb" => "app/views/layouts", "development.rb" => "config/environments", "production.rb" => "config/environments", "test.rb" => "config/environments", "backtrace_silencers.rb" => "config/initializers", "inflections.rb" => "config/initializers", "mime_types.rb" => "config/initializers", "secret_token.rb" => "config/initializers", "session_store.rb" => "config/initializers", "wrap_parameters.rb" => "config/initializers", "en.yml" => "config/locales", "application.rb" => "config", "boot.rb" => "config", "database.yml" => "config", "environment.rb" => "config", "routes.rb" => "config", "seeds.rb" => "db", "README_FOR_APP" => "doc", "development.log" => "log", "404.html" => "public", "422.html" => "public", "500.html" => "public", "favicon.ico" => "public", "index.html" => "public", "robots.txt" => "public", "script" => "rails", "browsing_test.rb" => "test/performance", "test_helper.rb" => "test/unit", ".gitignore" => "", "config.ru" => "", "Gemfile" => "", "Rakefile" => "", "README.rdoc" => "" }
  }
  attr_reader :question, :answer

  def initialize
    pick = @@paths_hash.to_a.sample
    @question = pick[0]
    @answer = pick[1] #deal with .gitkeep later
  end
end