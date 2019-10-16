class CategoriesController < ApplicationController

 def index

  #Show all the categories
  @categories = Category.all


 end

def new

  # Form for creating a new category
  @category=Category.new

end

def create

  #Take info from the form
  @category=Category.new(params.require(:category).permit(:name))

  #Save info to the database
  @category.save

  #redirect to homepage

  redirect_to root_path

end


def show

 #show all the listings
 @categories = Category.find(params[:id])


end

def destroy

  #find the selected category
  @categories = Category.find(params[:id])

  #call destroy on category
  @categories.destroy

  #redirect to home page

  redirect_to root_path

end


end
