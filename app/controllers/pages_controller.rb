class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    if params[:location_type]
      @establishments = Establishment.where(location_type: params[:location_type])
    else
      @establishments = Establishment.where(location_type: "cafe")
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
end
