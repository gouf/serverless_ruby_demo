# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :deployment do
  gem 'bundler'
  gem 'shindan', github: 'gouf/shindan'
end

group :development do
  gem 'fuubar'
  gem 'guard'
  gem 'guard-rspec'
  gem 'rspec'
end
