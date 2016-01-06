require 'test_helper'

module Api
  class AdsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @ad = ads(:one)
    end

    test 'GET #index' do
      get api_ads_url, params: { format: :json }
      assert_response :success
    end
  end
end
