class RecipesController < ApplicationController
  before_action :set_recipe, only: [:update, :destroy]
  before_action :authorize_user!, only: [:update, :destroy]

  def index
    recipes = Recipe.all
    render json: recipes
  end

  def create
    recipe = current_user.recipes.build(recipe_params)
    # Optional: Override submitted_by with current_user's name for integrity
    # recipe.submitted_by = current_user.name

    if recipe.save
      render json: recipe, status: :created
    else
      render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    recipe = Recipe.find_by(id: params[:id])

    if recipe
      render json: recipe
    else
      render json: { error: "Recipe not found" }, status: :not_found
    end
  end

  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy
    render json: { message: "Recipe deleted!" }
  end

  def my_recipes
    recipes = current_user.recipes
    render json: recipes
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def authorize_user!
    unless @recipe.user == current_user
      render json: { error: "Not authorized" }, status: :forbidden
      return
    end
  end

  def recipe_params
    # Adjust this depending on your frontend request payload structure:
    # If params are nested like { recipe: { title: ..., ... } }, uncomment below:
    # params.require(:recipe).permit(:title, :submitted_by, :ingredients, :instructions, :difficulty, :photo_url)

    # If params are flat (no nested recipe key), use this:
    params.permit(:title, :submitted_by, :ingredients, :instructions, :difficulty, :photo_url)
  end
end
