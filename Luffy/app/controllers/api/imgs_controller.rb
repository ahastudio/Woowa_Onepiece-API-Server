module Api
  class ImgsController < ApplicationController
    respond_to :json

    def index
      @imgs = Img.all
      respond_with(@imgs)
    end
  end
end
