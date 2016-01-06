require 'test_helper'

module Api
  class BusStopsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @bus_stop = bus_stops(:one)
    end

    test 'GET #index' do
      get api_bus_stops_url, params: { format: :json }
      assert_response :success
    end
  end
end
