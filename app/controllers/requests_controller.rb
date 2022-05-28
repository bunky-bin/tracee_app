class RequestsController < ApplicationController
  def index
    @request = Request.all
    #@requests = @request.find(params[:id])
  end
end
