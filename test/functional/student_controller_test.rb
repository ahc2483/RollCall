require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get checkin" do
    get :checkin
    assert_response :success
  end

end
