require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get main_show_url
    assert_response :success
  end

end
