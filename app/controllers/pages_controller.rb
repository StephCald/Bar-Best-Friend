class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    @establishments = Establishment.all
    @markers = @establishments.geocoded.map do |establishment|
      {
        lat: establishment.latitude,
        lng: establishment.longitude,
        info_window: render_to_string(partial: "info_window", locals: {establishment: establishment}),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end
end
