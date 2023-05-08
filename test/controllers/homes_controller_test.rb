require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get /" do
    get homes_/_url
    assert_response :success
  end
end
