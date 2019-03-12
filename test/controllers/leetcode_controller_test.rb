require 'test_helper'

class LeetcodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leetcode_index_url
    assert_response :success
  end

  test "should get show" do
    get leetcode_show_url
    assert_response :success
  end

end
