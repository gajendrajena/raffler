class UsersController < ApplicationController
	respond_to :json

  def index
    respond_with User.all.as_json
  end

  def show
    respond_with User.find(params[:id])
  end

  def create
    respond_with User.create(user_params)
  end

  def update
  	user = User.find(params[:id])
    user.update_attributes(user_params)
    respond_with user.as_json
  end

  def destroy
    respond_with User.destroy(params[:id])
  end

  def user_params
  	params.require(:user).permit(:name, :winner)
  end
end
