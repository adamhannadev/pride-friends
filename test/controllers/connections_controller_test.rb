require 'test_helper'

class ConnectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get connections_new_url
    assert_response :success
  end

  test "should get show" do
    get connections_show_url
    assert_response :success
  end

  test "should get remove" do
    get connections_remove_url
    assert_response :success
  end

end
