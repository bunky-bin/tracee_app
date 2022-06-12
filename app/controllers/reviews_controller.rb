class ReviewsController < ApplicationController


  def new
    @helper = User.find(params[:helper_id])
    @review = Review.new
  end

  def create
    @helper = User.find(params[:helper_id])
    @review = Review.new(review_params)
    @review.request_id = @helper.id
    @review.helper_id = @helper.id
    # unless @request.commuter == current_user
      if @review.save!

        redirect_to helper_requests_path(@helper)
      else
        flash[:alert] = "Something went wrong."
        render :new
      end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
