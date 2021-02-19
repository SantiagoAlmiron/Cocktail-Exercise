class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    selected
  end

  def create
    @cocktail_new = Cocktail.create(cocktail_params)
    @cocktail_new.save
    redirect_to cocktails_path
  end

  private

  def selected
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end


