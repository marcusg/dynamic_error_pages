class TestsController < ApplicationController
  def index
    raise "bang!"
  end

  def show
    raise ActionController::InvalidAuthenticityToken
  end

  def custom_exception
    raise CustomException.new
  end

end
