source 'http://rubygems.org'

gemspec

gem 'rails', '5.2.4.5'

platforms :ruby do
  gem 'sass'
  gem 'sqlite3', '~> 1.3.6'
  gem 'sprockets', '~> 3.7.2'

  group :development, :test do
    gem 'capybara', '>= 0.4.0'
    gem 'jquery-rails', '~> 4.0.4'
    gem 'mynyml-redgreen', '~> 0.7.1', require: 'redgreen'
  end

  group :active_record do
    gem 'carrierwave'
    gem 'dragonfly'
    gem 'mini_magick'
    gem 'paperclip', '~> 5.2.0'
    gem 'refile', require: 'refile/rails'
    gem 'refile-mini_magick'
  end

  group :mongoid do
    gem 'bson_ext'
    gem 'carrierwave-mongoid', require: 'carrierwave/mongoid'
    gem 'mongoid', '~> 5.0.0'
    gem 'mongoid-paperclip', require: 'mongoid_paperclip'
  end
end
