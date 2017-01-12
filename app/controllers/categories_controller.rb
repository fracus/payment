class CategoriesController < ApplicationController
	def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)

    @category.save

    redirect_to :action => :show, :id => @category.id
   end

   def show
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def edit
    @category= Category.find(params[:id])
  end

  def update

    @name = params[:category]["name"];
    @price_hs = params[:category]["price_hs"];
   
    @category = Category.find(params[:id]);  
    @category.name = @name;
    @category.price_hs = @price_hs;
    @category.save()

    redirect_to :action => :show, :id => @category.id
    
  end

  private

  def category_params
    params.require(:category).permit(:name,:price_hs)
  end
end
