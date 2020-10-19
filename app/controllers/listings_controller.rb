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
    @listings = Listing.all
  end

  def show
    @listing = Listing.find_by(id: params[:id])
  end

  def edit
    @listing = Listing.find_by(id: params[:id])
  end
  

  def update
    @listing = Listing.find(params[:id])
      if @listing.update_attributes(listing_params)
        flash[:success] = "Listing was successfully updated"
        redirect_to @listing
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  

  def destroy
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :bedroom, :bathroom, :address, :city, :state, :category_id)  
  end  
end
