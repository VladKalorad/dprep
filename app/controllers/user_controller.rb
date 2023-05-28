class UserController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @user = current_user
  end

  # def edit
  #   @user = current_user
  # end

  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to current_user, notice: 'Type was successfully updated.' }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:name, :phone, :city, :street, :house, :flat_number)
  end
end
