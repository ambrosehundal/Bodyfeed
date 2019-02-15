class RecipesController < ApplicationController
  def index
    @search_word = params[:looking_for] || 'avocados'
    @recipes = Recipe.for(@search_word)
  end
end
