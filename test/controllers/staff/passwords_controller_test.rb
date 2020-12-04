require 'test_helper'

class Staff::PasswordsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get staff_passwords_edit_url
    assert_response :success
  end

end
