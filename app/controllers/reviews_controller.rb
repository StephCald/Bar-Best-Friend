class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @establishment = Establishment.find(params[:establishment_id])
  end


  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.establishment = Establishment.find(params[:establishment_id])
    if @review.save
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comments)
  end
end
