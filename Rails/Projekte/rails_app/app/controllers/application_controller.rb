class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_signin
		unless current_user
			redirect_to new_session_url, alert: "Please sign in first!!!"
		end
	end

  def require_admin
      unless current_user && current_user.admin?
        redirect_to root_url, alert: "You are no admin!"
      end
  end

  def current_user_admin?
      current_user && current_user.admin?
  end
  helper_method :current_user_admin?
end