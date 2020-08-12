class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.json.jbuilder"
  end

  def create
    @recipe = Recipe.new(
                          name: params[:name],
                          ingredients: params[:ingredients],
                          ingredient_amount: params[:ingredients_amount],
                          instructions: params[:instructions]
                        )
    if @recipe.save
      render "show.json.jbuilder"
    else
      render json: {errors: @recipe.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @recipes = Recipe.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.name = params[:name] || @recipe.name
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.ingredient_amount = params[:ingredient_amount] || @recipe.ingredients_amount
    @recipe.instructions = params[:instructions] || @recipe.instructions
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: 'Succesfully Destroyed Recipe'}
  end
end
