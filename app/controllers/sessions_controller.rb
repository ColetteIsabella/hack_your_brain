class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email].downcase
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "You have successfully signed in, welcome to Hack your Brain!"
      redirect_to root_url
    else
      flash.now[:alert] = "Email is invalid."
      render "new"
    end
  end

  def destroy
    sign_out
    flash[:notice] = "Thank you for coming by, I hope we see you soon!"
    redirect_to root_url
  end
end
