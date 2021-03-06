# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

rails_version = ENV["BUNDLE_GEMFILE"].split("/").last.gsub(".gemfile", "")

require File.expand_path("../dummy#{rails_version}/config/environment.rb",  __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'dynamic_error_pages'
require 'pry'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.infer_base_class_for_anonymous_controllers = true

  config.order = 'random'
end
