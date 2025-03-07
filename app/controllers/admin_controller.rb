class AdminController < ApplicationController
  before_action :require_login

  def home
    
  end

  private

  def require_login
    unless logged_in?  
      flash[:alert] = "You must be logged in to access this section"
      redirect_to new_user_session_path  
    end
  end
end
