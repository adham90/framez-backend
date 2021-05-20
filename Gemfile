# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'redis'
# gem 'bcrypt', '~> 3.1.7'
gem 'awesome_print'
gem 'blueprinter'
gem 'command_service_object'
gem 'money-rails'
gem 'name_of_person'
gem 'oj'
# Use Active Storage variant

gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
