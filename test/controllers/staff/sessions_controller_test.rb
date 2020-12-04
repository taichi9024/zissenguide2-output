require 'test_helper'

class Staff::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staff_sessions_new_url
    assert_response :success
  end

end
