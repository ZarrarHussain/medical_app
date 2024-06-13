require "test_helper"

class RiderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rider_index_url
    assert_response :success
  end
end
