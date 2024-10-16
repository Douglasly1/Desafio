require "test_helper"

class AdmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adm_index_url
    assert_response :success
  end
end
