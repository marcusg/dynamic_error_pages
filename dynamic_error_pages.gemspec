# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamic_error_pages/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamic_error_pages"
  spec.version       = DynamicErrorPages::VERSION
  spec.author        = "Marcus Geißler"
  spec.email         = ["marcus3006@gmail.com"]
  spec.description   = %q{Engine that helps you to generate dynamic error pages with Rails}
  spec.summary       = %q{Engine that helps you to generate dynamic error pages with Rails}
  spec.homepage      = "https://github.com/marcusg/dynamic_error_pages"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 10.1'
  spec.add_development_dependency 'rspec-rails', '~> 2.0'
  spec.add_development_dependency 'shoulda-matchers', '~> 2.4'
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "appraisal", "~> 0.5.2"
  spec.add_development_dependency "capybara"

  spec.add_dependency "rails", ">= 3.2.0", "<= 4.1"
end
