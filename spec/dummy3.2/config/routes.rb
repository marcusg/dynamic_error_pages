Dummy::Application.routes.draw do
  resources :tests
  get :custom_exception, :to => "tests#custom_exception"
end
