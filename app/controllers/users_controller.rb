class UsersController < ApplicationController
  def show
    @user = current_user
    @establishment = @user.establishment
    @review = @user.review
  end
end
