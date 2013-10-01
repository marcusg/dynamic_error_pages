Rails.application.routes.draw do

  # rails 4 need the :via option
  via = Rails::VERSION::MAJOR > 3 ? {:via => :all} : {}

  match '/:status', {:to => "dynamic_error_pages/errors#show", :constraints => { :status => /\d{3}/ }}.merge(via)
end