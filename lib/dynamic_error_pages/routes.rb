module ActionDispatch::Routing
  class Mapper
    def dynamic_error_pages(opts={})
      Rails.application.routes.draw do
        # rails 4 need the :via option
        via = Rails::VERSION::MAJOR > 3 ? {:via => :all} : {}
        controller = opts[:controller] || "dynamic_error_pages/errors"
        match '/:status', {:to => "#{controller}#show", :constraints => { :status => /\d{3}/ }}.merge(via)
      end
    end
  end
end
