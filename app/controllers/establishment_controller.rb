class EstablishmentController < ApplicationController
 def index
   @user = current_user
   @establishments = Establishment.all
 end


end
