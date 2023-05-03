class UserController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to current_user, notice: 'Профиль успешно обновлён.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
