class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  # Method to get the current user from the session
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Method to check if a user is logged in
  def logged_in?
    !!current_user
  end

  # Method to require login for certain actions
  def require_login
    unless logged_in?
      flash[:alert] = "You must be logged in to access this section."
      redirect_to new_user_session_path  # Adjust to your sign-in path
    end
  end
end
