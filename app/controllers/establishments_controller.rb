class EstablishmentsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @user = current_user
    @establishments = Establishment.all
  end

  def show
    @user = current_user
    @establishment = Establishment.find_by(id: params[:id])
  end

  def new
    @user = current_user
    @establishment = Establishment.new
  end

  def create
    @establishment = Establishment.new(establishment_params)
    if @establishment.save
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

  private

  def establishment_params
    params.require(:establishment).permit(:name, :phone, :address, :type, :rating, :image, :id)
  end
end
