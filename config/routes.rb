Rails.application.routes.draw do

  # rails 4 need the :via option
  via = Rails::VERSION::MAJOR > 3 ? {:via => :all} : {}

  # if a subclassed errorscontroller exist, route to it
  controller = defined?(DynamicErrorPages::PatchedErrorsController) ? 'patched_errors' : 'errors'

  match '/:status', {:to => "dynamic_error_pages/#{controller}#show", :constraints => { :status => /\d{3}/ }}.merge(via)
end