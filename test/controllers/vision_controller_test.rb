require 'test_helper'

class VisionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vision_index_url
    assert_response :success
  end

end
