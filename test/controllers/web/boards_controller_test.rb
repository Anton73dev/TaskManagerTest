require "test_helper"

class Web::BoardsControllerTest < ActionDispatch::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end
end
