class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: %i[show edit update destroy]

  def index
    @user = current_user
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
    if @establishment.save
      redirect_to establishment_path(@establishment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def favorite
  #   @establishment = Establishment.find(params[:id])
  #   current_user.favorite(@establishment)
  #   redirect_to :back
  # end

  # def unfavorite
  #   @establishment = Establishment.find(params[:id])
  #   current_user.unfavorite(@establishment)
  #   redirect_to :back
  # end

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
   params.require(:establishment).permit(:name, :phone, :address, :type, :rating, :image)
  end
 end
