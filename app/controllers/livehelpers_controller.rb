class LivehelpersController < ApplicationController
  before_action :set_helper

  def show
    @helpers = User.geocoded
    # @users = User.where(user: { availability: true })
    @users = User.all
    @markers = @helpers.geocoded.map do |user|
      if user.id ==  @last_request.helper_id
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window: render_to_string(partial: "info_window", locals: { user: user })
        }
      end
    end
    @markers.reject! { |x| x.nil? }
  end

  private

  def set_helper
    @last_request = Request.last

    @helper = @last_request.helper
  end
end
