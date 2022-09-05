source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails", "~> 6.1.6"
gem "pg"
gem "puma", "~> 5.0"
gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
  gem "faker", git: "https://github.com/faker-ruby/faker.git", branch: "master"
  gem "rspec-rails"
end

group :test do
  gem "simplecov", require: false
end

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem 'simplecov', require: false
end
