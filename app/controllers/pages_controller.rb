class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    if params[:location_type]
      @establishments = Establishment.where(location_type: params[:location_type])
    else
      @establishments = Establishment.all
      #where(location_type: "cafe")
    end
    @markers = @establishments.geocoded.map do |establishment|
      {
        lat: establishment.latitude,
        lng: establishment.longitude,
        info_window: render_to_string(partial: "info_window", locals: {establishment: establishment}),
        image_url: helpers.asset_url("paw.png")
      }
    end
  end

  def toggle_map
    session[:show_map] = false if session[:show_map].nil?
    session[:show_map] = !session[:show_map]
    redirect_back fallback_location: root_path
  end
end
