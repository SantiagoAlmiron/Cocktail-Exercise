class CocktailsController < ApplicationController

def index
  @cocktails = Cocktail.all
end

def show
  selected
end

private

def selected
  @cocktail = Cocktail.find(params[:id])
end

end


