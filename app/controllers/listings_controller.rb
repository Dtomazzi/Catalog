class ListingsController < ApplicationController


  def show

  #show individual listings

  end


  def new

    #Form for creating a new listing
    @listing=Listing.new

  end


  def create

   #Take form info and create new listing in DB
   @listing = Listing.new(params.require(:listing).permit(:title, :price, :description, :contact))

   #save new listing
   @listing.save

   #redirect to homepage
   redirect_to root_path

  end


  def destroy

    #Find the listing
    @listing=Listing.find.(params[:id])

    #call destroy

    @listing.destroy


    #redirect to listings page

    redirect_to listings_path

  end

end
