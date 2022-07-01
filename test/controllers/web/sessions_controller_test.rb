require "test_helper"

class Web::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get :new
    assert_response :success
  end
end
