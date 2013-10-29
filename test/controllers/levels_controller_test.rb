require "test_helper"

class LevelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get thought" do
    get :thought
    assert_response :success
  end

end
