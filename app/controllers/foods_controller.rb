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
        @food = Food.find params[:id]
        @food.update(food_params)
    end
   
    private
    
    def food_params
      params.permit(:item_name, :expiration_date, :protein, :carbs, :fats, :quantity)
    end
end
