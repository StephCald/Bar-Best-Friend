class ReviewTagsController < ApplicationController
  # def create
  #   @review_tag = ReviewTag.new(review_tag_params)
  #   if @review_tag.save
  #     redirect_to root_path, notice: 'Review tag was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  def create
    @review_tag = ReviewTag.new
    @review_tag.review_id = @review.id
    params[:tag_ids].each do |tag_id|
      @review.review_tags.create(tag_id: tag_id)
    end
    if @review_tag.save
      redirect_to root_path, notice: 'Review tag was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_tag_params
    params.require(:review_tag).permit(:review, :tag)
  end
end
