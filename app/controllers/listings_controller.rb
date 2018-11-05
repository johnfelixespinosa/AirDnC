class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

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
      )
    end

end