require "test_helper"

class ContactformControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contactform_new_url
    assert_response :success
  end

  test "should get create" do
    get contactform_create_url
    assert_response :success
  end
end
