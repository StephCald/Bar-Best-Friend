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
    if @establishment.save!
      redirect_to establishment_path(@establishment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # authorize @establishment
    @establishment = Establishment.find(params[:id])
  end

  def update
    # authorize @establishment
    @establishment = Establishment.find(params[:id])
    @establishment.update(establishment_params)
    if @establishment.update(establishment_params)
      redirect_to establishment_path(@establishment)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # authorize @establishment
    @establishment = Establishment.find(params[:id])
    @establishment.destroy
    redirect_to root_path, status: :see_other
  end


  # def favorite
  #   @establishment = Establishment.find(params[:id])
  #   current_user.favorite(@establishment)
  #   redirect_to :back
  # end

  def toggle_favorite
    @establishment = Establishment.find(params[:id])
    current_user.favorited?(@establishment) ? current_user.unfavorite(@establishment) : current_user.favorite(@establishment)
    redirect_to establishment_path(@establishment)
  end

  private

  def establishment_params
   params.require(:establishment).permit(:name, :phone, :address, :location_type, :rating, :image)
  end
end
