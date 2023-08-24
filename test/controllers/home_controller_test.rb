require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get reverse" do
    get home_reverse_url
    assert_response :success
  end
end
