require 'test_helper'

class FoodusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fooduser = foodusers(:one)
  end

  test "should get index" do
    get foodusers_url
    assert_response :success
  end

  test "should get new" do
    get new_fooduser_url
    assert_response :success
  end

  test "should create fooduser" do
    assert_difference('Fooduser.count') do
      post foodusers_url, params: { fooduser: { email: @fooduser.email, login: @fooduser.login, name: @fooduser.name } }
    end

    assert_redirected_to fooduser_url(Fooduser.last)
  end

  test "should show fooduser" do
    get fooduser_url(@fooduser)
    assert_response :success
  end

  test "should get edit" do
    get edit_fooduser_url(@fooduser)
    assert_response :success
  end

  test "should update fooduser" do
    patch fooduser_url(@fooduser), params: { fooduser: { email: @fooduser.email, login: @fooduser.login, name: @fooduser.name } }
    assert_redirected_to fooduser_url(@fooduser)
  end

  test "should destroy fooduser" do
    assert_difference('Fooduser.count', -1) do
      delete fooduser_url(@fooduser)
    end

    assert_redirected_to foodusers_url
  end
end
