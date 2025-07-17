class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_rich_text :about_me
  has_one_attached :profile_picture

  def create_stripe_account
    stripe_account = Stripe::Account.create
    binding.pry
  end
end
