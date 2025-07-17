class SettingsController < ApplicationController
  def show
  end

  def create
    if current_user.update(user_params)
      redirect_to root_path, notice: "Updated successfully"
    else
      render :show
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :address_1, :address_2, :city, :region, :zipcode, :country, :about_me, :profile_picture)
  end
end
