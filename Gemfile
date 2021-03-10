source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3'

gem 'pg'

gem 'actionpack', '>= 6.0.3.2'

#gem 'activerecord-session_store'
gem 'activerecord-session_store', github: 'rails-lts/activerecord-session_store', branch: 'secure-session-store'

gem 'devise', '~> 4.4', '>= 4.4.1'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 4.1'
gem 'redis', '~> 4.0'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 3.7'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
