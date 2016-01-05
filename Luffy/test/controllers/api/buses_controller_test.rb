require 'test_helper'

module Api
  class BusesControllerTest < ActionDispatch::IntegrationTest
    setup do
      Bus.create!(bus_id: 'A1', bus_nm: '37번')
    end

    test 'GET #index' do
      get api_buses_url, params: { format: :json }
      assert_response :success
      assert_includes response.body, 'A1'
      assert_not_includes response.body, '99번'
    end
  end
end
