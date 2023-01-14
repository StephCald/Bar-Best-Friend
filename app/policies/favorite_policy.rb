class FavoritePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all if @user
    end
  end

  def index
    true
  end

  # def toggle?
  #   true
  # end
end
