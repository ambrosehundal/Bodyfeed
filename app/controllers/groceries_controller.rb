class GroceriesController < ApplicationController
    def index
        @lists = Grocery.all 
        @events = Meetup.new.events
    
    
    end

    def new
        @list = Grocery.new
       
    end

    def create
        @list = Grocery.new(list_params)
        @list.save
        redirect_to :action => 'index'
    end

    def show
        @list = Grocery.find(params[:id])
        #@food = @list.foods.build(food_params)
    end

    def edit 
        @list = Grocery.find(params[:id])
    end

    def update
        @list = Grocery.find(params[:id])
        if @list.update(list_params)   
            
           redirect_to :root    
           flash[:success] = "food items Updated!"   
        else  
           render action: :edit   
        end   
    end

   

    def destroy
        @list = Grocery.find(params[:id])
        @list.destroy

        redirect_to :root

    end

    private
    
    def list_params
      params.require(:grocery).permit(:title, :purchase_date, :cost, :notes, :receipt)
    end

    
    


end
