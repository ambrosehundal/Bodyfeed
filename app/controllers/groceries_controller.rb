class GroceriesController < ApplicationController
    def index
        @lists = Grocery.all 
    end

    def new
        @list = Grocery.new
    end

    def create
        @list = Grocery.new(list_params)
        #@comment.article_id = params[:article_id]

        @list.save

        -#redirect_to article_path(@comment.article)
    end

    private
    
    def list_params
      params.require(:grocery_list).permit(:name, :purchase_date, :cost, :notes)
    end


end
