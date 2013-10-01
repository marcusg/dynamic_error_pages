class DynamicErrorPages::ErrorsController < ApplicationController

  def show
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

  def exception
    env['action_dispatch.exception']
  end

end
