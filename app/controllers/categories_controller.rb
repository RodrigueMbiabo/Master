class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)    
        if @category.save
            flash[:success] = "Successfully created!"
            redirect_to category_path(@category)
        else
            flash[:error] = "could not create!"
            render 'new'
        end
    
    
    end

    def edit
        @Category = Category.find(params[:id])
        
    end

    def update
        @category = Category.find(params[:id])

        if @category.update(category_params)
            redirect_to category_path(@category)
            flash[:success] = "Successfully update!"
            else
                flash[:error] = "could not update"
                render 'edit'
            end
        
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end
    private def category_params
        params.require(:category).permit(:title)
    end
end
