class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update edit_parameters
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
  def edit_parameters
    params.require(:user).permit(:admin)
  end
end
