class AddProfileToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string
    add_column :users, :city, :string
    add_column :users, :region, :string
    add_column :users, :country, :string
    add_column :users, :zipcode, :string
  end
end
