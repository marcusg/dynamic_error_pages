class DynamicErrorPages::ErrorsController < ApplicationController

  def show
    request.format = :html
    begin
      render "#{status_code}", :status => status_code, :formats => [:html]
    rescue ActionView::MissingTemplate => e
      render "404", :status => 404, :formats => [:html]
    end

  end

  protected

  def path
    env["REQUEST_PATH"] || env["ORIGINAL_FULLPATH"]
  end

  def status_code
    request.path[1..-1]
  end

end
