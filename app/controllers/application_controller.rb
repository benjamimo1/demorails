class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
 
  private
 
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to "/login" # halts request cycle
    end
  end

  def already_login
    if logged_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end

  private  
  def logged_in?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end  
  helper_method :logged_in?

end
  