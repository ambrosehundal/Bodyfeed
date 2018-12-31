class FoodsController < ApplicationController
    def index
        @foods = Food.all
    end

    def new
        @food = Food.new
    end

    def show
        @food = Food.find(params[:id])
    end

    def create
        @list = Grocery.find(params[:grocery_id])

        @food = @list.foods.create(food_params)
        #@food = Food.new(food_params)

        #@list = food.grocery.build(params[:grocery])
        #@food.save

        redirect_to :action => 'index'
    end

    def edit 
        @food = Food.find(params[:id])
    
    end

    def update
        @food = Food.find(params[:id])
        if @food.update(food_params)   
            
           redirect_to :root    
           flash[:success] = "food items Updated!"   
        else  
           render action: :edit   
        end   
    end

    def destroy
        @food = Food.find(params[:id])
        @food.destroy
        redirect_to grocery_food_path
    
    end
   
    private
    
    def food_params
      #params.permit(:food)  
      params.require(:food).permit(:item_name, :expiration_date, :protein, :carbs, :fats, :quantity)
    end
end
