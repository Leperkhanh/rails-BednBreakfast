class ListingsController < ApplicationController
  def new
    if user_signed_in?
      @listing = current_user.listings.build
      @listing.build_category
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
      render "new"
    end
  end

  def index
    @user = User.find_by(id: params[:user_id])
    if @user
      @listings = @user.listings
    else
      @listings = Listing.all
    end
    if params[:q] && !params[:q].empty?
      @listings = @listings.search(params[:q].downcase)
    end
  end

  def show
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @listing = Listing.find_by(id: params[:id])
    else
      @listing = Listing.find_by(id: params[:id])
      if @listing
        @booking = Booking.new
      else
        redirect_to root_path
      end
    end
  end

  def edit
    @listing = Listing.find_by(id: params[:id])
    if @listing.user == current_user
      render "edit"
    else
      flash[:alert] = "You do not have permission to edit this listing!"
      redirect_to root_path
    end
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.user == current_user
      if @listing.update_attributes(listing_params)
        flash[:notice] = "Listing was successfully updated"
        redirect_to @listing
      else
        flash[:alert] = "Listing was not updated!"
        render "edit"
      end
    else
      flash[:alert] = "You do not have permission to edit this listing"
      redirect_to root_path
    end
  end

  def destroy
    @listing = Listing.find_by(id: params[:id])
    if @listing.user == current_user
      @listing.destroy
      if @listing.destroy
        flash[:notice] = "Listing was successfully deleted."
        redirect_to listings_path
      else
        flash[:alert] = "Listing was not deleted"
        redirect_to listing_path(@listing)
      end
    else
      flash[:alert] = "You do not have permission to delete this post"
      redirect_to root_path
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :bedroom, :bathroom, :address, :city, :state, :img, :category_id, category_attributes: [:name])
  end

  def booking_params
    params.require(:booking).permit(:listing_id, :user_id, :guest_id, :comments)
  end
end
