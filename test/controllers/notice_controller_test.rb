require "test_helper"

class NoticeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get notice_new_url
    assert_response :success
  end

  test "should get index" do
    get notice_index_url
    assert_response :success
  end

  test "should get show" do
    get notice_show_url
    assert_response :success
  end
end
