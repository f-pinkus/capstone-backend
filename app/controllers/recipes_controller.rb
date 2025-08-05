class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render :index
  end

  def create
    @recipe = Recipe.create(
      title: params[:title],
      submitted_by: params[:submitted_by],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      difficulty: params[:difficulty],
      photo_url: params[:photo_url]
    )

    if @recipe.valid?
      render :show
    else
      render json: { errors: @recipe.errors.full_messages }, status: 422
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])

    render :show
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])

    @recipe.update(
      title: params[:title] || @recipe.title,
      submitted_by: params[:submitted_by] || @recipe.submitted_by,
      ingredients: params[:ingredients] || @recipe.ingredients,
      instructions: params[:instructions] || @recipe.instructions,
      difficulty: params[:difficulty] || @recipe.difficulty,
      photo_url: params[:photo_url] || @recipe.photo_url
    )
    if @recipe.valid?
      render :show
    else
      render json: { errors: @recipe.errors.full_messages }, status: 422
    end
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render json: { message: "Recipe deleted!"}
  end
end
