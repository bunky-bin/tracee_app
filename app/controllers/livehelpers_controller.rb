class LivehelpersController < ApplicationController

  before_action :set_helper


  def show

    @helpers = User.geocoded
    @markers = @helpers.geocoded.map do |user|
        if user.id == current_user.id
        {
          lat: user.latitude,
          lng: user.longitude
          #info_window: render_to_string(partial: "info_window", locals: { user: user })
          }
        end


     end
  end

  private

  def set_helper
    @last_request = Request.last

    @helper = @last_request.helper
  end
end
