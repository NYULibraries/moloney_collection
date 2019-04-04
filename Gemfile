source 'https://rubygems.org'

# Despite admin panel disabled, Must remain enabled for dependent models, such as 'document'
gem 'activeadmin', github: 'gregbell/active_admin', tag: 'v1.0.0'
gem 'active_admin_import' , '2.1.2'

# Disabled due to deprecation:
# gem 'delayed_job_active_record', github: 'collectiveidea/delayed_job_active_record', tag: 'v4.1.3'
# gem 'devise', '~> 3.5.10' () # must upgrade to be compatible with >= Ruby 2.5.0

gem 'bootstrap-sass', '~> 3.3.4'
gem 'cancan', '~> 1.6'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'font-awesome-sass', '~> 4.3'
gem 'friendly_id', '~> 5.1'
gem 'jquery-rails', '~> 4.0.3'
gem 'mysql2', '0.4.10'
gem 'paperclip', '~> 5.3.0'
gem 'rails', '~> 4.2.11.1'
gem 'sass', '~> 3.4'
gem 'sass-rails', '~> 5.0.7'
gem 'simple_form', '~> 3.1'
gem 'turbolinks', '~> 2.5.4'
gem 'uglifier', '~> 2.7.1'

group :no_docker do
  gem 'therubyracer', platforms: :ruby
end

## NYU gems
gem 'formaggio', github: 'NYULibraries/formaggio', tag: 'v1.7.2'
gem 'nyulibraries_errors', github: 'NYULibraries/nyulibraries_errors', tag: 'v1.0.1'

group :development do
  gem 'populator'
  gem 'web-console'
end

group :development, :test do
  gem 'awesome_print'
  gem 'bundler-audit', require: false
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rails-dev-boost'
  gem 'rspec-rails', '~> 3.1.0'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'shoulda-matchers', require: false
  gem 'timecop'
  gem 'webmock'
end