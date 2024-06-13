require "test_helper"

class LabStaffControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lab_staff_index_url
    assert_response :success
  end
end
