class FoodsController < ApplicationController
    def index
        @list = Grocery.find(params[:id])
        @foods = @list.foods
    end

    def new
        @list = Grocery.find(params[:grocery_id])
        @food = @list.foods.build
    end

    def show
       # @food = Food.find(params[:id])
        @list = Grocery.find(params[:id])
        @food = @list.foods.find(params[:grocery_id])
    end

    def create
        @list = Grocery.find(params[:grocery_id])

        @food = @list.foods.create(food_params)

        redirect_to :action => 'index'
    end

    def edit 
        @list = Grocery.find(params[:id])
        @food = @list.foods.find(params[:grocery_id])

    end

    def update
        @list = Grocery.find(params[:id])
        @food = @list.foods.find(params[:grocery_id])
        if @food.update(food_params)   
            
           redirect_to :root    
           flash[:success] = "food items Updated!"   
        else  
           render action: :edit 
             
        end   
    end

    def destroy
        @list = Grocery.find(params[:grocery_id])
        @food = @list.foods.find(params[:id])
        @food.destroy
        redirect_to grocery_food_path
    
    end
   
    private
    
    def food_params
      #params.permit(:food)  
      params.require(:food).permit(:item_name, :expiration_date, :protein, :carbs, :fats, :quantity)
    end
end
