class UsersController < ApplicationController

  def update
    @user = current_user
    if @user.update_attribute('email', params[:user][:email])
      flash[:notice] = "Your profile has been updated."
      redirect_to "/"
    else
      render :action => 'edit'
    end
  end

end
