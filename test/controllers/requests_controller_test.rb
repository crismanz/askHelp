require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get "/requests"
    assert_response 302
  end

  test "should create request" do
      post requests_url, params: { request: { title: 'title', description: 'description', longitude: '9.376307', latitude: '45.495934' } }
    assert_response 302
  end

  test "should update request" do
      patch request_url(@request), params: { request: { title: 'title', description: 'description', category: 'one time help', longitude: '9.376307', latitude: '45.495934', status: 'Unfulfilled' } }
    assert_response 302
  end

end
