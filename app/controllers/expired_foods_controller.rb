class ExpiredFoodsController < ApplicationController
  before_action :set_expired_food, only: [:show, :edit, :update, :destroy]

  # GET /expired_foods
  # GET /expired_foods.json
  def index
    @expired_foods = ExpiredFood.all
  end

  # GET /expired_foods/1
  # GET /expired_foods/1.json
  def show
  end

  # GET /expired_foods/new
  def new
    @expired_food = ExpiredFood.new
  end

  # GET /expired_foods/1/edit
  def edit
  end

  # POST /expired_foods
  # POST /expired_foods.json
  def create
    @expired_food = ExpiredFood.new(expired_food_params)

    respond_to do |format|
      if @expired_food.save
       # ExpiredFoodMailer.welcome_email(@)

        format.html { redirect_to @expired_food, notice: 'Expired food was successfully created.' }
        format.json { render :show, status: :created, location: @expired_food }
      else
        format.html { render :new }
        format.json { render json: @expired_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expired_foods/1
  # PATCH/PUT /expired_foods/1.json
  def update
    respond_to do |format|
      if @expired_food.update(expired_food_params)
        format.html { redirect_to @expired_food, notice: 'Expired food was successfully updated.' }
        format.json { render :show, status: :ok, location: @expired_food }
      else
        format.html { render :edit }
        format.json { render json: @expired_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expired_foods/1
  # DELETE /expired_foods/1.json
  def destroy
    @expired_food.destroy
    respond_to do |format|
      format.html { redirect_to expired_foods_url, notice: 'Expired food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expired_food
      @expired_food = ExpiredFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expired_food_params
      params.require(:expired_food).permit(:name, :email)
    end
end
