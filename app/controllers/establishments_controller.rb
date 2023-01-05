class EstablishmentsController < ApplicationController
 def index
   @user = current_user
   @establishments = Establishment.all
 end

 def show
  @user = current_user
  @establishment = Establishment.find(params[:id])
 end

 def new
  @user = current_user
  @establishment = Establishment.new
 end

 private

 def establishment_params
  params.require(:establishment).permit(:name, :phone, :address, :type, :rating, :image)
 end
end
