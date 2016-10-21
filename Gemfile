source 'https://rubygems.org'
ruby '2.3.0'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'redis', '~>3.2'

gem 'jbuilder', '~> 2.0'
gem 'pry-rails'
gem 'puma'

# Authentication, User Management
gem 'devise'
gem 'pundit'
gem 'administrate'
gem 'intercom-rails', '0.2.28'
gem 'email_validator'

# We need this until we can upgrade to Rails 5
gem 'actioncable', git: 'git://github.com/rails/actioncable.git', branch: 'archive'

# HTML and CSS preprocessors
gem 'haml'
gem 'sass-rails', '~> 5.0'
gem 'nav_lynx'
gem 'simple_form'
gem 'nested_form'
gem 'formtastic', '~> 3.0'

# JavaScript
gem 'jquery-rails'
gem 'jquery-fileupload-rails'
gem 'uglifier', '>= 1.3.0'

# Assets
gem 'bourbon'
gem 'bootstrap-sass', '~> 3.3.6'

# File Uploads
gem 'fog'
gem 'carrierwave'

# SMS
gem 'twilio-ruby', '~> 4.11.1'
gem 'phone', '1.2.3'

# Analytics
gem 'mixpanel-ruby'

# Scheduled tasks
gem 'rufus-scheduler'

# Images
gem 'mini_magick'
gem 'avatarly'

# Exception Handler
gem 'exception_handler', '~> 0.5.0'
gem 'responders', '~> 2.2'

# Sigh
gem 'tod'
# gem 'exception_notification'

group :ci do
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'jshintrb'
  gem 'rubocop'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller', '~> 0.7.3.pre1'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'jasmine-rails'
  gem 'rspec-rails'
  gem 'dotenv-rails'
  gem 'faker'
end

group :production, :staging do
  gem 'rails_12factor'
end

group :toolbox do
  gem 'travis'
end

group :test do
  gem 'rspec-core'
  gem 'rspec-its'
  gem 'shoulda-matchers'
  gem 'should_not'
  gem 'pundit-matchers', '~> 1.1.0'
  gem 'simplecov', require: false
  gem 'capybara'
  gem 'email_spec'
  gem 'factory_girl_rspec'
  gem 'jasmine'
end
