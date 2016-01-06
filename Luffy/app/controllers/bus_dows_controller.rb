class BusDowsController < ApplicationController
  before_action :set_bus_dow, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @bus_dows = BusDow.all
    respond_with(@bus_dows)
  end

  def show
    respond_with(@bus_dow)
  end

  def new
    @bus_dow = BusDow.new
    respond_with(@bus_dow)
  end

  def edit
  end

  def create
    @bus_dow = BusDow.new(bus_dow_params)
    @bus_dow.save
    respond_with(@bus_dow)
  end

  def update
    @bus_dow.update(bus_dow_params)
    respond_with(@bus_dow)
  end

  def destroy
    @bus_dow.destroy
    respond_with(@bus_dow)
  end

  private

  def set_bus_dow
    @bus_dow = BusDow.find(params[:id])
  end

  def bus_dow_params
    params.require(:bus_dow).permit(:bus_dow_nm, :dow_id)
  end
end
