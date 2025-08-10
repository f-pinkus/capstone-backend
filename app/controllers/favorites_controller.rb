class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    favorite = current_user.favorites.new(recipe_id: params[:recipe_id])
    if favorite.save
      render json: { success: true }
    else
      render json: { success: false, errors: favorite.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    favorite = current_user.favorites.find_by(recipe_id: params[:recipe_id])
    if favorite&.destroy
      render json: { success: true }
    else
      render json: { success: false }, status: :not_found
    end
  end

  def user_favorites
    recipes = current_user.favorite_recipes
    render json: recipes, status: :ok
  end
end
