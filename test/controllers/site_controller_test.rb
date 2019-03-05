require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get "/"
    assert_response :success
  end

end
