class UsersController < ApplicationController
  before_action :set_user, only: %i[ index show edit update destroy ]
  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # GET /users
  def create
      @user = User.new(user_params)
    if @user.save
      redirect_to user_url(@user), notice: "user was successfully created."
    else
      # TODO render + flash
    end

  end

  def update
    if @user.update(user_params)
      redirect_to user_url(@user), notice: "user was successfully updated." 
    else
      #  ??
    end
  end

  def destroy
    @user.destroy!
    redirect_to users_url, notice: "user was successfully destroyed." 
  end

  private
   # Use callbacks to share common setup or constraints between actions.
  def set_user
    params[:id] ? @user = User.find(params[:id]) : @user = User.first
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name)
  end
end
