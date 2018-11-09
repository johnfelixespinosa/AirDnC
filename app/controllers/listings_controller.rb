class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:user_id]
      @listings = User.find(params[:user_id]).listings
    else
      @listings = Listing.all
    end
  end

  def show
  end

  def new
    @listing = current_user.listings.build
    @address = @listing.build_address
  end

  def create
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to listing_path(@listing)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      redirect_to edit_listing_path
    end
  end

  def destroy
    @listing.destroy
    redirect_to root_path
  end
  
  private

    def find_listing
      @listing = Listing.find_by(id: params[:id])    
    end

    def listing_params
      params.require(:listing).permit(
        :name,
        :description,
        :listingimage,
        :price,
        address_attributes: [
          :id,
          :line1, 
          :line2, 
          :city, 
          :state, 
          :zipCode
        ]
      )
    end

  end