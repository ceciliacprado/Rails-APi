# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'

gem 'rails', '~> 7.1.5', '>= 7.1.5.1'

gem 'pg', '~> 1.1'

gem 'puma', '>= 5.0'

gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'bootsnap', require: false

gem 'rswag'

gem 'rack-cors'

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 7.0.0'
  gem 'rubocop', require: false
  gem 'pry-rails'
  gem 'devise'
end

group :test do
  gem 'simplecov', require: false
  gem 'shoulda-matchers'
end

group :development do
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
end
