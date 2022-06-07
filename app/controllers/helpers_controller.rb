class HelpersController < ApplicationController
  def index
    @helpers = User.all
  end

  def show
    @helper = User.find(params[:id])
    # @request = Request.new
  end
end
