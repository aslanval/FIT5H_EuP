class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  helper_method :redirect_to

  def current_user_admin?
    current_user && current_user.admin?
  end
  helper_method :current_user_admin?

  def current_user_moderator?
    current_user && current_user.moderator?
  end
  helper_method :current_user_moderator?

  def require_yourself?
    current_user || current_user_moderator?
  end
  helper_method :require_yourself?


  def require_signin 
   unless current_user
    redirect_to new_session_url, alert: "Please sign in first."
   end
  end

  def require_moderator
    unless current_user_moderator?
      redirect_to root_path, alert: "Acces denied."
    end
  end

  def require_admin
    unless current_user_admin?
      redirect_to root_path, alert: "Admin's permissions needed."
    end
  end

  def require_yourself
    unless current_user.id == @user.id || current_user_moderator?
      redirect_to new_session_url, alter: "No permissions."
    end
  end

end
 