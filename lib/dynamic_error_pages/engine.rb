module DynamicErrorPages
  class Engine < ::Rails::Engine

    initializer 'dynamic_error_pages.update_app' do |app|
      engine_name :dynamic_error_pages
      app.config.exceptions_app = app.routes
    end

  end
end