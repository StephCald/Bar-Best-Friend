class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: %i[show edit update destroy]
  # skip_before_action :authenticate_user!, only: [:show]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @user = current_user
    @establishments = Establishment.all
    @reviews = Reviews.all
    @establishments = policy_scope(Establishment).all
  end

  def show
    authorize @establishment
    @user = current_user
    @establishment = Establishment.find(params[:id])
      @tag_count = [
        { name: "Outdoor", count: @establishment.reviews.joins(:review_tags).where(review_tags: { tag_id: Tag.find_by_name("Outdoor").id }).count},
        { name: "Water Bowl", count: @establishment.reviews.joins(:review_tags).where(review_tags: { tag_id: Tag.find_by_name("Water Bowl").id }).count },
        { name: "Indoor", count: @establishment.reviews.joins(:review_tags).where(review_tags: { tag_id: Tag.find_by_name("Indoor").id }).count },
        { name: "Treats", count: @establishment.reviews.joins(:review_tags).where(review_tags: { tag_id: Tag.find_by_name("Treats").id }).count },
        { name: "Waste Bags", count: @establishment.reviews.joins(:review_tags).where(review_tags: { tag_id: Tag.find_by_name("Waste Bags").id }).count },
        { name: "Dog Menu", count: @establishment.reviews.joins(:review_tags).where(review_tags: { tag_id: Tag.find_by_name("Dog Menu").id }).count }
      ]
      @tag_count = @tag_count.select { |tag| tag[:count] > 0 }
  end

  def new
    @user = current_user
    @establishment = Establishment.new
    authorize @establishment
  end

  def create
    @establishment = Establishment.new(establishment_params)
    # establishment.rating = 1 if establishment.rating.empty?
    authorize @establishment
    if @establishment.save!
      redirect_to establishment_path(@establishment)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    authorize @establishment
  end

  def update
    if current_user.present?
      authorize @establishment
      @establishment.update(establishment_params)
      if @establishment.update(establishment_params)
        redirect_to establishment_path(@establishment)
      else
        render :edit, status: :unprocessable_entity
      end
    else
     redirect_to root_path
    end
  end

  def destroy
    authorize @establishment
    @establishment.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_establishment
    @establishment = Establishment.find(params[:id])
  end

  def establishment_params
    params.require(:establishment).permit(:name, :phone, :address, :location_type, :rating, :image)
  end
end
