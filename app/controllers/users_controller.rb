class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.all
  end

  def edit
    @user = User.find(params[:id])
    redirect_to user_path(id: current_user) unless current_user.id == @user.id
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
