require "test_helper"

class OverwatchClassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get overwatch_class_index_url
    assert_response :success
  end
end
