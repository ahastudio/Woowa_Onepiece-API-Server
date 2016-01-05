module Api
  class BusesController < ApplicationController
    respond_to :json

    def index
      @buses = Bus.all
      respond_with(@buses)
    end
  end
end
