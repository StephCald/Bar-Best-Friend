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
    selected_tags = params[:review][:tag_ids].reject(&:blank?)
    @review.user = current_user
    @review.establishment = Establishment.find(params[:establishment_id])
    if @review.save!
      # selected_tags.each do |tag_id|
        # @review.review_tags.create_with(tag_id: tag_id).find_or_create_by(review_id: @review.id, tag_id: tag_id)
      # end
      redirect_to establishment_path(@review.establishment)
    else
      render 'new', status: :unprocessable_entity
    end
end

  private

  def review_params
    params.require(:review).permit(:comments, tag_ids: [])
  end
end
