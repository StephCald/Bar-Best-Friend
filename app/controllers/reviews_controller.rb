class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review.review_tags << ReviewTag.new
    @tags = Tag.all
    @establishment = Establishment.find(params[:establishment_id])
    authorize @review
  end


  def create
    @review = Review.new(review_params)
    authorize @review
    selected_tags = params[:review][:tag_ids].values
    selected_tags.each do |tag_id|
      @review.review_tags.build({tag_id: tag_id})
    end
    @review.user = current_user
    @review.establishment = Establishment.find(params[:establishment_id])
    if @review.save!
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comments, :tag_ids)
  end
end
