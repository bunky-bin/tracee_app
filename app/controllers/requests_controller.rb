class RequestsController < ApplicationController
  before_action :set_helper, except: [:index]
  before_action :last_request

  attr_reader :helper

  def index
  # if params for helper true

    if params.has_key?(:helper_id)
      commuter = current_user
      @requests = Request.where(commuter: commuter)
    else
      @requests = Request.all
    end
  end

  def create

    @helper = User.find(params[:helper_id])
    @request = Request.new
    @request.location = helper.location
    @request.commuter = current_user
    @request.helper = @helper

    if @request.save!
    redirect_to  livehelper_path(@helper)
    else
      render :new
    end
  end

  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[last_request])
  end
end

private

def set_helper
  @helper = User.find(params[:helper_id])
end

def last_request
  # possible way to filter the right request
  @last_request = Request.all.where(current_user == :id).last
end

#current_user.requests.last
