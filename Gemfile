source "https://rubygems.org"

gem 'activeadmin', :git => "git://github.com/gregbell/active_admin.git"
gem "active_admin_import" , '2.1.2'
gem "bootstrap-sass"
gem "cancan"
gem 'ckeditor', github: 'galetahub/ckeditor'
gem "delayed_job_active_record"
gem "devise"
gem "font-awesome-sass"
gem 'friendly_id'
gem "jquery-rails"
gem "mysql2"
gem 'paperclip'
gem "rails", "4.2.0"
gem "sass", "~> 3.4"
gem "simple_form"
gem 'therubyracer', platforms: :ruby
gem "turbolinks"
gem "uglifier"

## NYU gems
#gem 'formaggio', github: 'NYULibraries/formaggio'

group :development do
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem "populator"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem 'rails-dev-boost'
  gem "rspec-rails", "~> 3.1.0"
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
  gem "database_cleaner"
  gem "formulaic"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
end
