source 'https://rubygems.org'

# Despite admin panel disabled, Must remain enabled for dependent models, such as 'document'
gem 'activeadmin', github: 'gregbell/active_admin', tag: 'v1.4.3'
gem 'active_admin_import' , '2.1.2'

# Update rake after we're off formaggio/figs
# gem 'rake', '~> 12.3.3'

# Disabled due to deprecation:
# gem 'delayed_job_active_record', github: 'collectiveidea/delayed_job_active_record', tag: 'v4.1.3'
# gem 'devise', '~> 3.5.10' () # must upgrade to be compatible with >= Ruby 2.5.0
# gem 'simple_form', '~> 4'
# gem 'turbolinks', '~> 2.5.4'

gem 'bootstrap-sass', '~> 3.3.4'
gem 'cancan', '~> 1.6'
gem 'font-awesome-sass', '~> 4.3'
gem 'friendly_id', '~> 5.1'
gem 'jquery-rails', '~> 4.3.3'
gem 'mysql2', '0.4.10'
gem 'paperclip', '~> 6'
gem 'rails', '~> 5.2.4'
gem 'sass', '~> 3.4'
gem 'sass-rails', '~> 5.0.7'
gem 'uglifier', '~> 2.7.1'

group :no_docker do
  gem 'therubyracer', platforms: :ruby
end

## NYU gems
gem 'formaggio', github: 'NYULibraries/formaggio', tag: 'v1.7.2'
gem 'nyulibraries_errors', github: 'NYULibraries/nyulibraries_errors', tag: 'v1.1.1'

group :development do
  # gem 'populator'
  gem 'listen'
  gem "better_errors"
  gem "binding_of_caller"
end

group :development, :test do
  # Use multi-threaded puma as the app server for testing and local development
  gem 'puma', '~> 4.3'
  # byebug debugger
  gem 'byebug'
  # gem 'awesome_print'
  # gem 'bundler-audit', require: false
  # gem 'dotenv-rails'
  # gem 'factory_girl_rails'
  # gem 'pry-rails'
  # gem 'rails-dev-boost'
  # gem 'rspec-rails', '~> 3.1.0'
end

group :test do
  # gem 'minitest-reporters', '1.0.5'
  # gem 'mini_backtrace',     '0.1.3'
  # gem 'guard-minitest',     '2.3.1'
  # gem 'database_cleaner'
  # gem 'formulaic'
  # gem 'shoulda-matchers', require: false
  # gem 'timecop'
  # gem 'webmock'
end