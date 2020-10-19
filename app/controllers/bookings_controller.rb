class BookingsController < ApplicationController
    def create
        @booking = Booking.new(booking_params)
        if @booking.save
          flash[:notice] = "Booking successfully created"
          redirect_to root_path
        else
          flash[:alert] = "Booking was not created"
          render 'listings/show'
        end
    end

    private 

    def booking_params
        params.require(:booking).permit(:listing_id, :user_id, :guest_id,)
    end
    
end
