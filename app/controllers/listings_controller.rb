class ListingsController < ApplicationController

  def new
    if user_signed_in?
      @listing = Listing.new
    else
      flash[:notice] = "You must be logged in to create a new listing!" 
       redirect_to root_path
    end
  end

  def create
    @listing = current_user.listings.build(listing_params)
    if @listing.save
      flash[:notice] = "Listing successfully created"
      redirect_to @listing
    else
      flash[:alert] = "Listing was not created"
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
      if @listing.user == current_user 
        render 'edit'
      else
        flash[:alert] = "#{@listing.errors}"
        redirect_to root_path        
      end
  end
  

  def update
      @listing = Listing.find(params[:id])
      if @listing.user == current_user
        if @listing.update_attributes(listing_params)
          flash[:success] = "Listing was successfully updated"
          redirect_to @listing
        else
          flash[:error] = "Listing was not updated!"
          render 'edit'
        end
      else 
        flash[:error] = "You do not have permission to edit this listing"
        redirect_to root_path     
      end
  end
  
  def destroy
      @listing = Listing.find_by(id: params[:id])
      if @listing.user == current_user
      @listing.destroy
        if @listing.destroy
          flash[:success] = 'Listing was successfully deleted.'
          redirect_to listings_path
        else
          flash[:error] = 'Listing was not deleted'
          redirect_to listing_path(@listing)
        end  
    else
      flash[:alert] = "You do not have permission to delete this post"
      redirect_to root_path         
    end

  end
  

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :bedroom, :bathroom, :address, :city, :state, :category_id)  
  end  
end
