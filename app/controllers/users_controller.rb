class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end
  def new
    @user = User.new
    end
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
      # Handle a successful save.
      else
      render 'new', status: :unprocessable_entity
      end
      end
      private
      def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation,:avatar,:phone,:describe)
      end
      def destroy
        User.find(params[:id]).destroy
        redirect_to @@current_path
    end
      end