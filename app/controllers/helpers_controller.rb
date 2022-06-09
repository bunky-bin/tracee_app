class HelpersController < ApplicationController
  def index
    @helpers = User.geocoded

    @users = User.all

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
    @helper = User.find(params[:id])
    # @request = Request.new
  end

end
