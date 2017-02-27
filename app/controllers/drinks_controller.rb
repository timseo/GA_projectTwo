class DrinksController < ApplicationController

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(user_params)

    # store all emails in lowercase to avoid duplicates and case-sensitive login errors:
    @drink.name.downcase!

    if @drink.save
      # If user saves in the db successfully:
      flash[:notice] = "Drink created successfully!"
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create a drink."
      render :new
    end
end
