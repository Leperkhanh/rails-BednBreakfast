class GuestsController < ApplicationController
    def index 

    end

    def show 
        @guest = Guest.find_by(id: params[:id])     
    end
end
