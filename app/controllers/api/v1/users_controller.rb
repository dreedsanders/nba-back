class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def show
    user = User.find(params[:id])
    render json: user
  end

  # def new
  #   @user = User.new
  # end

  def create
    @user = User.new(user_params)
    if @user.valid?
  render json:{ user: @user, status: :created}
else
  render json: { error: "Name taken, please choose another username" }
end
  end

  def update
    user = User.find(params[:id])
    # user.update(:name params[:name], :password params[:password], :photo params[:photo])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :photo)
    end
end
