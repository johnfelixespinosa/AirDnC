class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :find_profile, only: [:show]

  def new
    @profile = current_user.build_profile
    @address = @profile.build_address
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to user_path(current_user)
    else
      raise params.inspect
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private
    def profile_params
      params.require(:profile).permit(
        :greeting,
        :about_me,
        :phone_number,
        :user_id,
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

    def find_profile
      @user = User.find_by(id: params[:id])
    end
end
