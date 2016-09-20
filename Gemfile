source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '~> 5.0.0.1'
gem 'pg', '~> 0.18'
gem 'puma'

# New Relic just added Rails 5 support
gem 'newrelic_rpm', '>= 3.15.0.314'

gem 'rack-timeout'

gem 'redis', '~>3.2'

gem 'interactor-rails', '~> 2.0'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'rspec-rails-time-metadata'
  gem 'shoulda-matchers', '~> 3.1'
end

group :production do
  gem 'honeybadger', '~> 2.0'
  gem 'rails_12factor'
end
