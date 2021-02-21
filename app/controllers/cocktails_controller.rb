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
  
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
  
  def selected
    @cocktail = Cocktail.find(params[:id])
  end
  
end

# def article_params
#   params.require(:cocktail).permit(:title, :body, :photo)
# end

