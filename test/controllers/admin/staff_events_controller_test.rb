require 'test_helper'

class Admin::StaffEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_staff_events_index_url
    assert_response :success
  end

end
