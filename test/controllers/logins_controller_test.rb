require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logins_index_url
    assert_response :success
  end

  test "should get loginConfirm" do
    get logins_loginConfirm_url
    assert_response :success
  end

end
