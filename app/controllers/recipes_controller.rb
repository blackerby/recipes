class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "Recipe successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "Recipe successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: 'Recipe successfully deleted.'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions, :source_url)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
