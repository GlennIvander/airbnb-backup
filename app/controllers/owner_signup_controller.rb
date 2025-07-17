class OwnerSignupController < ApplicationController
  def show
  end

  def create
    if current_user
      current_user.create_stripe_account
    else
      redirect_to new_user_session_path, alert: "You must be logged in to sign up as an owner."
    end
  end
end
