DynamicErrorPages::Engine.routes.draw do

  # rails 4 need the :via option
  via = Rails::VERSION::MAJOR > 3 ? {:via => :all} : {}

  match '(errors)/:status', {:to => "errors#show", :constraints => { :status => /\d{3}/ }}.merge(via)
end