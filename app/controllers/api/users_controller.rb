class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    user = User.find(params[:id])
    render json: user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    @user = User.create(user_params)
    render json: @user
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    user = User.find(params[:id])
    user.update(:name params[:name], :password params[:password], :photo params[:photo])
  end

  # DELETE /users/1 or /users/1.json
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
      params.require(:user).permit(:name, :password, :photo)
    end
end
