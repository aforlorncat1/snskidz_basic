require 'test_helper'

class CarSeatItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_seat_item = car_seat_items(:one)
  end

  test "should get index" do
    get car_seat_items_url
    assert_response :success
  end

  test "should get new" do
    get new_car_seat_item_url
    assert_response :success
  end

  test "should create car_seat_item" do
    assert_difference('CarSeatItem.count') do
      post car_seat_items_url, params: { car_seat_item: { description: @car_seat_item.description, name: @car_seat_item.name, price: @car_seat_item.price } }
    end

    assert_redirected_to car_seat_item_url(CarSeatItem.last)
  end

  test "should show car_seat_item" do
    get car_seat_item_url(@car_seat_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_seat_item_url(@car_seat_item)
    assert_response :success
  end

  test "should update car_seat_item" do
    patch car_seat_item_url(@car_seat_item), params: { car_seat_item: { description: @car_seat_item.description, name: @car_seat_item.name, price: @car_seat_item.price } }
    assert_redirected_to car_seat_item_url(@car_seat_item)
  end

  test "should destroy car_seat_item" do
    assert_difference('CarSeatItem.count', -1) do
      delete car_seat_item_url(@car_seat_item)
    end

    assert_redirected_to car_seat_items_url
  end
end
