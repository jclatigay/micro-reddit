require "test_helper"

class CredsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get creds_edit_url
    assert_response :success
  end

  test "should get update" do
    get creds_update_url
    assert_response :success
  end
end
