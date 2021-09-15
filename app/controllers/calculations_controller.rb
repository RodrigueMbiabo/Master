class CalculationsController < ApplicationController
    def index
        @calculations = Calculation.all
        respond_to do |format|
        	format.json {
        		render json: @calculations.to_json
        	}
        	format.xml {
        		render xml: @calculations.to_xml
        	}
        	format.html{
        		render 'index'
        	}
        end
    end

    def show
        @calculation = Calculation.find(params[:id])
    end

    def new
        @calculation = Calculation.new
    end

    def create
        @calculation = Calculation.new(calculation_params)
        if @calculation.operand == '/' && @calculation.argument2 ==0
            flash[:error] = "argument2 is wrong please try  another one different to 0"
            render 'new'
        else
            
            if @calculation.save
                flash[:success] = "Successfully created!"
                redirect_to calculation_path(@calculation)
            else
                flash[:error] = "could not create!"
                render 'new'
            end
        end
    end

    def edit
        @calculation = Calculation.find(params[:id])
        
    end

    def update
        @calculation = Calculation.find(params[:id])

        if @calculation.update(calculation_params)
            redirect_to calculation_path(@calculation)
            flash[:success] = "Successfully update!"
            else
                flash[:error] = "could not update"
                render 'edit'
            end
        
    end

    def destroy
        @calculation = Calculation.find(params[:id])
        @calculation.destroy
        redirect_to calculations_path
    end
    private def calculation_params
        params.require(:calculation).permit(:argument1, :operand, :argument2, :title, :category_id)
    end
end
