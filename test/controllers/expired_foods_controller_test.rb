require 'test_helper'

class ExpiredFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expired_food = expired_foods(:one)
  end

  test "should get index" do
    get expired_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_expired_food_url
    assert_response :success
  end

  test "should create expired_food" do
    assert_difference('ExpiredFood.count') do
      post expired_foods_url, params: { expired_food: { email: @expired_food.email, name: @expired_food.name } }
    end

    assert_redirected_to expired_food_url(ExpiredFood.last)
  end

  test "should show expired_food" do
    get expired_food_url(@expired_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_expired_food_url(@expired_food)
    assert_response :success
  end

  test "should update expired_food" do
    patch expired_food_url(@expired_food), params: { expired_food: { email: @expired_food.email, name: @expired_food.name } }
    assert_redirected_to expired_food_url(@expired_food)
  end

  test "should destroy expired_food" do
    assert_difference('ExpiredFood.count', -1) do
      delete expired_food_url(@expired_food)
    end

    assert_redirected_to expired_foods_url
  end
end
