class TestsController < ApplicationController
  def index
    raise "bang!"
  end

  def show
    raise ActionController::InvalidAuthenticityToken
  end
end