class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
  end

  def edit
  end

  def update_password
    @user = current_user

    if @user.update_with_password(user_params)
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end


  def show
  end

  def update
    @user = current_user
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to @user, notice: 'User\'s information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  end
  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :name, :email, :id )
  end
end
