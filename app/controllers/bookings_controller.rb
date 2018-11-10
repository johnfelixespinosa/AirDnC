class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    listing = Listing.find_by(id: params[:listing_id])

    @booking = current_user.bookings.build(booking_params)

    @booking.listing = listing
    @booking.price = listing.price
    @booking.save

    if @booking.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
    
  end

  private
    def booking_params
      params.require(:booking).permit(
        :price,
        :guest_id
        )
    end

  end
