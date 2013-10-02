require "rails"

module DynamicErrorPages
  class Engine < ::Rails::Engine
    engine_name :dynamic_error_pages

    initializer 'dynamic_error_pages.update_app' do |app|
      app.config.exceptions_app = app.routes
    end

  end
end