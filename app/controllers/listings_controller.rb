class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.build(listing_params)
    if @listing.save
      flash[:success] = "Listing successfully created"
      redirect_to @listing
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  

  def index
  end

  def show
  end

  def edit
  end

  def update 
  end  
  

  def destroy
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :price, :bedroom, :bathroom, :address, :city, :state, :category_id)  
  end  
end
