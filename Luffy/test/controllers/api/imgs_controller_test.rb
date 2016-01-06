require 'test_helper'

module Api
  class ImgsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @img = imgs(:one)
    end

    test 'GET #index' do
      get api_imgs_url, params: { format: :json }
      assert_response :success
    end
  end
end
