require "test_helper"

class Recipe1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipe1_index_url
    assert_response :success
  end

  test "should get show" do
    get recipe1_show_url
    assert_response :success
  end
end
