require 'test_helper'

class BusDowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_dow = bus_dows(:one)
  end

  test 'should get index' do
    get bus_dows_url
    assert_response :success
  end

  test 'should get new' do
    get new_bus_dow_url
    assert_response :success
  end

  test 'should create bus_dow' do
    assert_difference('BusDow.count') do
      post bus_dows_url, params: {
        bus_dow: {
          bus_dow_nm: @bus_dow.bus_dow_nm,
          dow_cd_id: @bus_dow.dow_cd_id
        }
      }
    end

    assert_redirected_to bus_dow_path(BusDow.last)
  end

  test 'should show bus_dow' do
    get bus_dow_url(@bus_dow)
    assert_response :success
  end

  test 'should get edit' do
    get edit_bus_dow_url(@bus_dow)
    assert_response :success
  end

  test 'should update bus_dow' do
    patch bus_dow_url(@bus_dow), params: {
      bus_dow: {
        bus_dow_nm: @bus_dow.bus_dow_nm,
        dow_cd_id: @bus_dow.dow_cd_id
      }
    }
    assert_redirected_to bus_dow_path(@bus_dow)
  end

  test 'should destroy bus_dow' do
    assert_difference('BusDow.count', -1) do
      delete bus_dow_url(@bus_dow)
    end

    assert_redirected_to bus_dows_path
  end
end
