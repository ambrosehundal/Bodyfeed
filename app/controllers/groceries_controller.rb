class GroceriesController < ApplicationController
    def index
        @lists = Grocery.all 
    end

    def new
        @list = Grocery.new
        @food = Grocery.foods.build(food_params)
    end

    def create
        @list = Grocery.new(list_params)
        #@comment.article_id = params[:article_id]

        @list.save

        #redirect_to article_path(@comment.article)
    end

    private
    
    def list_params
      params.require(:grocery_list).permit(:name, :purchase_date, :cost, :notes)
    end

    def food_params
        params.require(:food).permit(:item_name, :expiration_date, :protein, :carbs, :fats, :calories)
    end


end
