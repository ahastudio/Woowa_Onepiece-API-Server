require 'test_helper'

module Api
  class BusesControllerTest < ActionDispatch::IntegrationTest
    setup do
      @bus = buses(:one)
    end

    test 'GET #index' do
      get api_buses_url, params: { format: :json }
      assert_response :success
      assert_includes response.body, 'B1'
      assert_not_includes response.body, '99번'
    end

    test 'GET #show' do
      get api_bus_url(@bus.id), params: { format: :json }
      assert_response :success
      assert_includes response.body, 'B1'
      assert_includes response.body, '37번'
    end

    test 'GET #show (404)' do
      get api_bus_url('NOT-FOUND'), params: { format: :json }
      assert_response :not_found
    end
  end
end
