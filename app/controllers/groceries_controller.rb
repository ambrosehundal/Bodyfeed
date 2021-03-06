class GroceriesController < ApplicationController
    def index
        @lists = Grocery.all 
        @events = Meetup.new.events
        @leetcode = Leetcode.new.coding_events
    end

    def new
        @list = Grocery.new
    end

    def create
        @list = Grocery.create(list_params)
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
      params.require(:grocery).permit(:title, :purchase_date, :cost, :notes)
    end

    def expired_date
        @g = Grocery.find(params[:grocery][:id])
        if @g.expiry_date > DateTime.now
        if self.purchase_date > Date.today
            self.title = "Expired Foods"
        else
            self.title = self.title

        end

    end

    
    


end
