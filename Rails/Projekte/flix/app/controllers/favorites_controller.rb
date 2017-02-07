class FavoritesController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		unless Favorite.where(user_id: current_user.id, movie_id: @movie.id).any?
			@movie.favorites.create(user_id: current_user.id)
			redirect_to @movie, notice: "Movie wurde favorisiert"
		else
			redirect_to @movie, alert: "Mehrmals-Favorite is not really möglich"
		end
	end
	def destroy
		@favorite = Favorite.find(params[:id])
		@favorite.delete
		redirect_to movie_path(params[:movie_id]), alert: "Du hast erfolgreich dein Favorite gelöscht"
	end
end
