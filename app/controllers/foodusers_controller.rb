class FoodusersController < ApplicationController
  before_action :set_fooduser, only: [:show, :edit, :update, :destroy]

  # GET /foodusers
  # GET /foodusers.json
  def index
    @foodusers = Fooduser.all
  end

  # GET /foodusers/1
  # GET /foodusers/1.json
  def show
  end

  # GET /foodusers/new
  def new
    @fooduser = Fooduser.new
  end

  # GET /foodusers/1/edit
  def edit
  end

  # POST /foodusers
  # POST /foodusers.json
  def create
    @fooduser = Fooduser.new(fooduser_params)

    respond_to do |format|
      if @fooduser.save
        ExpiredFoodMailer.mailer(@fooduser).deliver_now
        format.html { redirect_to @fooduser, notice: 'Fooduser was successfully created.' }
        format.json { render :show, status: :created, location: @fooduser }
      else
        format.html { render :new }
        format.json { render json: @fooduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodusers/1
  # PATCH/PUT /foodusers/1.json
  def update
    respond_to do |format|
      if @fooduser.update(fooduser_params)
        format.html { redirect_to @fooduser, notice: 'Fooduser was successfully updated.' }
        format.json { render :show, status: :ok, location: @fooduser }
      else
        format.html { render :edit }
        format.json { render json: @fooduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodusers/1
  # DELETE /foodusers/1.json
  def destroy
    @fooduser.destroy
    respond_to do |format|
      format.html { redirect_to foodusers_url, notice: 'Fooduser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fooduser
      @fooduser = Fooduser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fooduser_params
      params.require(:fooduser).permit(:name, :email, :login)
    end
end
