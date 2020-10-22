class GuestsController < ApplicationController
 
    def show 
        @guest = Guest.find_by(id: params[:id])     
    end
end
