class SessionsController < ApplicationController
  def new
    # Display the sign-in form
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])  
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully signed in!'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil  # Clear the user session
    redirect_to root_path, notice: "Successfully signed out."  # Redirect to the home page
  end
end