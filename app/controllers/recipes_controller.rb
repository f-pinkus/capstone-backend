class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes
  end

  def create
    recipe = current_user.recipes.build(recipe_params)
    # recipe = Recipe.create(
    #   title: params[:title],
    #   submitted_by: params[:submitted_by],
    #   ingredients: params[:ingredients],
    #   instructions: params[:instructions],
    #   difficulty: params[:difficulty],
    #   photo_url: params[:photo_url]
    # )

    if recipe.save?
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
    recipe = Recipe.find_by(id: params[:id])

    if recipe
      recipe.update(
        title: params[:title] || recipe.title,
        submitted_by: params[:submitted_by] || recipe.submitted_by,
        ingredients: params[:ingredients] || recipe.ingredients,
        instructions: params[:instructions] || recipe.instructions,
        difficulty: params[:difficulty] || recipe.difficulty,
        photo_url: params[:photo_url] || recipe.photo_url
      )

      if recipe.valid?
        render json: recipe
      else
        render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: "Recipe not found" }, status: :not_found
    end
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])

    if recipe
      recipe.destroy
      render json: { message: "Recipe deleted!" }
    else
      render json: { error: "Recipe not found" }, status: :not_found
    end
  end
end
