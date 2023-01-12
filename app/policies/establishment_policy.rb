class EstablishmentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve

    # end
  end

  def new?
    return create?
  end

  def create?
    return true
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    user.admin
  end

  def destroy?
    user.admin
  end

  def toggle_favorite?
    user
  end

end
