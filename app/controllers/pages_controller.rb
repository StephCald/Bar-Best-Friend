class PagesController < ApplicationController

  def home
    @user = current_user
    @establishments = Establishment.all
  end
end
