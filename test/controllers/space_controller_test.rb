require 'test_helper'

class SpaceControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get space_new_url
    assert_response :success
  end

  test "should get show" do
    get space_show_url
    assert_response :success
  end

  test "should get edit" do
    get space_edit_url
    assert_response :success
  end

end
