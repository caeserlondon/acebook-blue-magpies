class ApplicationController < ActionController::Base
#   skip_before_action :require_login, :only =>[:logged_in?]
  protect_from_forgery with: :exception
  # first commit ignore
  helper_method :current_user, :logged_in?
  def current_user
      @_current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
      !!current_user
  end
  
  def require_user
      if !logged_in?
          flash[:alert] = "You must be logged in to perform that action."
          redirect_to login_path
      end
  end

  private 

  def require_login
    unless current_user
      redirect_to login_path
    end
  end
end
