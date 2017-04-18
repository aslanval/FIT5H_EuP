class SessionsController < ApplicationController
  def new
    render layout: "other"
  end
	def create
		user = User.find_by(email: params[:email])	#prüft ob email in DB vorhanden ist
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back #{user.prename} #{user.lastname}."
			redirect_to root_path
		else
			flash.now[:alert] = "Wrong LogIn information."	#speicher die Fehlinformation im hintergrund für den render
			redirect_to new_session_path 	# gehe zu views/sessions/new.html.erb
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "You have successfully logt out."
	end
end
 