class LivehelpersController < ApplicationController

  before_action :set_helper


  def show

  @helper
  #
  end

  private

  def set_helper
    @last_request = Request.last

    @helper = @last_request.helper
  end
end
