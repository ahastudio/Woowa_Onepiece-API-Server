module Api
  class AdsController < ApplicationController
    respond_to :json

    def index
      @ads = Ad.all
      respond_with(@ads)
    end
  end
end
