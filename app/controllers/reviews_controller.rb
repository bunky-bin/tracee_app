class ReviewsController < ApplicationController
  def new
    # @helper = User.find(params[:helper_id])
    @review = Review.new
  end

  def create
    # @request = Request.find(params[:request_id])
    @review = Review.new(review_params)
    @helper = User.find(params[:helper_id])
    # @review.user = current_user
    # @review.helper = User.find(params[:review][:helper])
    # @review = Review.new(review_params)
    # @review.helper = @helper
    # @review.request = Request.find(params[:request_id])
    # unless @request.commuter == current_user
    if @review.save!
      redirect_to helpers_path(@helper)
      # redirect_to helpers_path(@request)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating).merge(params.permit(:request_id))
  end
end
