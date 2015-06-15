class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    unless user.save()
      redirect_to users_new_path
    else
      login(user)
      redirect_to users_show_path(user)
  end

  def show
  end

  def edit
    @user = current_user
  end

  def update
  end

  def destroy
  end
  private

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
    end
  end
end
