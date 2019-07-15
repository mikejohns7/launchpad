require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get send_global" do
    get notifications_send_global_url
    assert_response :success
  end

  test "should get send_direct" do
    get notifications_send_direct_url
    assert_response :success
  end

end
