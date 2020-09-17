require 'test_helper'

class MouthsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mouths_index_url
    assert_response :success
  end

end
