# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'rails', '~> 7.0.6'

gem 'active_model_serializers'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rgeo'
gem 'rgeo-geojson'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-factory_bot'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :test do
  gem 'shoulda-matchers', '~> 4.0'
end

group :development do
  gem 'web-console'
end
