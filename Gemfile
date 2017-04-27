source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'simple_form'
gem 'commontator', '~> 4.11.1'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'twitter-bootstrap-rails'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'devise'
gem 'devise_invitable'
gem 'feedjira'

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
end

group :development do
  gem 'sqlite3', '~> 1.3', '>= 1.3.11'
  gem 'better_errors'
  gem 'foreman'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver', '~> 3.2', '>= 3.2.2'
end

group :production do
  # gem 'unicorn'
  gem 'pg'
end

gem 'cancancan'
gem 'rolify'
gem 'toastr-rails'
gem 'ckeditor'
gem 'paperclip'
gem 'stathat'
gem 'google-analytics-rails', '1.1.0'
gem 'masonry-rails'
gem 'rails_admin', '~> 1.0'
gem 'redcarpet'
gem 'coderay'
gem 'albino'
gem 'will_paginate', '~> 3.1.0'
gem 'acts_as_votable', '~> 0.10.0'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'jquery-turbolinks'
gem 'social-share-button'
gem 'carrierwave', '0.11.2'
gem 'mini_magick', '4.5.1'
gem 'fog', '1.38.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
