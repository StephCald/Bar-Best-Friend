class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @user = current_user
    @establishments = Establishment.all
    @reviews = Reviews.all
    @establishments = policy_scope(Establishment).all
  end

  def show
    authorize @establishment
    @user = current_user
  end

  def new
    authorize @establishment
    @user = current_user
    @establishment = Establishment.new
  end

  def create
    authorize @establishment
    @establishment = Establishment.new(establishment_params)
    # establishment.rating = 1 if establishment.rating.empty?
    if @establishment.save!
      redirect_to establishment_path(@establishment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def toggle_favorite
    @establishment = Establishment.find(params[:id])
    current_user.favorited?(@establishment) ? current_user.unfavorite(@establishment) : current_user.favorite(@establishment)
    redirect_to establishment_path(@establishment)
  end

  def edit
    authorize @establishment
  end

  def update
    authorize @establishment
    @establishment.update(establishment_params)
    if @establishment.update(establishment_params)
      redirect_to establishment_path(@establishment)
    else
      render :edit, status: :unprocessable_entity
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
