require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

end
