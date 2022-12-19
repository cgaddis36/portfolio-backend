source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.5"

gem "rails", "~> 7.0.4"
gem "pg", "~> 1.1"
gem "puma", "= 6.0.0"
gem "graphql"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "rack-cors"

group :development, :test do
  gem "shoulda-matchers"
  gem "capybara"
  gem "rspec-rails"
  gem "pry"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

