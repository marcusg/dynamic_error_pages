unless Rails.env.development? || Rails.env.test?
  Rails.application.config.exceptions_app = DynamicErrorPages::Engine.routes
end