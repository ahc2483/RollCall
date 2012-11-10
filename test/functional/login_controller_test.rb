require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get handle" do
    get :handle
    assert_response :success
  end

end
