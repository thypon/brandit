require 'test_helper'

class CompanyControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get show_more" do
    get :show_more
    assert_response :success
  end

end
