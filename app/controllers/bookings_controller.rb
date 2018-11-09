class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    listing = Listing.find_by(id: params[:listing_id])

    @booking = current_user.bookings.build

    if @booking.save
      redirect_to listing
    else
      render 'new'
    end
    
  end

  private
    def booking_params
      params.require(:booking).permit(:price)
    end

  end
