class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end  
end
