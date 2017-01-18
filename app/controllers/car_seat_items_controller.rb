class CarSeatItemsController < ApplicationController
  before_action :set_car_seat_item, only: [:show, :edit, :update, :destroy]

  # GET /car_seat_items
  # GET /car_seat_items.json
  def index
    @car_seat_items = CarSeatItem.all
  end

  # GET /car_seat_items/1
  # GET /car_seat_items/1.json
  def show
  end

  # GET /car_seat_items/new
  def new
    @car_seat_item = CarSeatItem.new
  end

  # GET /car_seat_items/1/edit
  def edit
  end

  # POST /car_seat_items
  # POST /car_seat_items.json
  def create
    @car_seat_item = CarSeatItem.new(car_seat_item_params)

    respond_to do |format|
      if @car_seat_item.save
        format.html { redirect_to @car_seat_item, notice: 'Car seat item was successfully created.' }
        format.json { render :show, status: :created, location: @car_seat_item }
      else
        format.html { render :new }
        format.json { render json: @car_seat_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_seat_items/1
  # PATCH/PUT /car_seat_items/1.json
  def update
    respond_to do |format|
      if @car_seat_item.update(car_seat_item_params)
        format.html { redirect_to @car_seat_item, notice: 'Car seat item was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_seat_item }
      else
        format.html { render :edit }
        format.json { render json: @car_seat_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_seat_items/1
  # DELETE /car_seat_items/1.json
  def destroy
    @car_seat_item.destroy
    respond_to do |format|
      format.html { redirect_to car_seat_items_url, notice: 'Car seat item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_seat_item
      @car_seat_item = CarSeatItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_seat_item_params
      params.require(:car_seat_item).permit(:name, :price, :description)
    end
end
