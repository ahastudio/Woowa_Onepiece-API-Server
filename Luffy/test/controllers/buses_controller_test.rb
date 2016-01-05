require 'test_helper'

class BusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus = buses(:one)
  end

  test "should get index" do
    get buses_url
    assert_response :success
  end

  test "should get new" do
    get new_bus_url
    assert_response :success
  end

  test "should create bus" do
    assert_difference('Bus.count') do
      post buses_url, params: { bus: { bus_id: @bus.bus_id, bus_nm: @bus.bus_nm } }
    end

    assert_redirected_to bus_path(Bus.last)
  end

  test "should show bus" do
    get bus_url(@bus)
    assert_response :success
  end

  test "should get edit" do
    get edit_bus_url(@bus)
    assert_response :success
  end

  test "should update bus" do
    patch bus_url(@bus), params: { bus: { bus_id: @bus.bus_id, bus_nm: @bus.bus_nm } }
    assert_redirected_to bus_path(@bus)
  end

  test "should destroy bus" do
    assert_difference('Bus.count', -1) do
      delete bus_url(@bus)
    end

    assert_redirected_to buses_path
  end
end
