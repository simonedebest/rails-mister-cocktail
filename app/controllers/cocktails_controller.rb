class CocktailsController < ApplicationController
  def index
  @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params.require(:cocktail).permit(:name))
   @cocktail.save!
   redirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
   @cocktail.update(params.require(:cocktail).permit(:name))
   redirect_to cocktail_path(@cocktail)
  end

  def destroy
      @cocktail = Cocktail.find(params[:id])
  @cocktail.destroy
  end
end
