require 'test_helper'

class MisionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mision_index_url
    assert_response :success
  end

end
