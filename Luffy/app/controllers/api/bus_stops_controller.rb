module Api
  class BusStopsController < ApplicationController
    respond_to :json

    def index
      @bus_stops = BusStop.all
      respond_with(@bus_stops)
    end
  end
end
