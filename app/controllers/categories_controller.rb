class CategoriesController < ApplicationController
   
   def index

    end

    def new
        @category = Category.new
    end

    def create
        category = Category.create(create_params)
        redirect_to = "/categories/index"
    end

    def edit

    end
    
    private

    def create_params
        params.require(:category).permit(:name)
    end

end
