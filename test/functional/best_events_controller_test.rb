require 'test_helper'

class BestEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get up" do
    get :up
    assert_response :success
  end

end
